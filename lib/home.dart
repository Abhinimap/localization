
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_localization_prac/app_locale_mixin.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(centerTitle: true,title: Text(AppLocale.appTitle.getString(context)),),
      body: Center(child: Column(
        children: [
          Text(AppLocale.theHomePageText.getString(context)),
        ],
      ),),);
  }
}
