import 'dart:io';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization_prac/app_locale_mixin.dart';
import 'package:flutter_localization_prac/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final FlutterLocalization _localization = FlutterLocalization.instance;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    _localization.init(
      mapLocales: [
        const MapLocale('en', AppLocale.EN,countryCode: 'US'),
        const MapLocale('hi', AppLocale.HI,countryCode: 'HI'),
      ],
      initLanguageCode: 'en',
    );
    _localization.onTranslatedLanguage = _onTranslatedLanguage;
print('----->${Platform.localeName}');
    _localization.translate(Platform.localeName=='hi_IN'?'hi':'en');

  }

  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);
    debugPrint(locales?.isNotEmpty ?? false?'did lang changes : ${locales?.first.languageCode} ${locales?.first.countryCode}':"empty locla");
    if (locales != null) {
      for (Locale loc in locales) {
        if (AppLocale.allSupportedLocales.contains(loc.languageCode)) {
         return  _localization.translate(loc.languageCode);
        }
      }
      _localization.translate(AppLocale.defaultLocale.languageCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoApp(
            supportedLocales: _localization.supportedLocales,
            localizationsDelegates: _localization.localizationsDelegates,
            home: const HomePage(),
          )
        : MaterialApp(
      debugShowCheckedModeBanner: false,

            supportedLocales: _localization.supportedLocales,

            localeListResolutionCallback: (locales, supportedLocales) {
              if (locales != null) {
                for (Locale locale in locales) {
                  if (supportedLocales.contains(locale)) {
                    return locale;
                  }
                }
                return AppLocale.defaultLocale;
              } else {
                return AppLocale.defaultLocale;
              }
            },
            localizationsDelegates: _localization.localizationsDelegates,
      home: HomePage(),);
  }
}
