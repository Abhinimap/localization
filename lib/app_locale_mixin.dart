import 'dart:ui';

mixin AppLocale {
  static const String appName = "Df_flutter_localization";
  static const String appTitle = "Df_Localization Demo";
  static const String theHomePageText = '''Default I remember as a child, 
  and as a young budding naturalist, spending all my time observing and testing 
  the world around me—moving pieces, altering the flow of things, 
  and documenting ways the world responded to me. Now,
   as an adult and a professional naturalist, I’ve approached language in the same way,
    not from an academic point of view but as a curious child still building little mud dams in creeks
     and chasing after frogs. So this book is an odd thing: 
     it is a naturalist’s walk through the language-making landscape of the English language,
      and following in the naturalist’s tradition it combines observation, experimentation, speculation,
       and documentation—activities we don’t normally associate with language.''';


  static const List<String> allSupportedLocales=['hi','en'];
  static const Locale defaultLocale=Locale('en','US',);
  static const Map<String, dynamic> HI = {
    theHomePageText:
        "मुझे याद है कि एक बच्चे के रूप में, और एक युवा उभरते प्रकृतिवादी के रूप में, मैं अपना सारा समय अपने आस-पास की दुनिया को देखने और परीक्षण करने में बिताता था - टुकड़ों को हिलाना, चीजों के प्रवाह को बदलना, और उन तरीकों का दस्तावेजीकरण करना जिनसे दुनिया ने मुझ पर प्रतिक्रिया की। अब, एक वयस्क और एक पेशेवर प्रकृतिवादी के रूप में, मैंने भाषा को उसी तरह से अपनाया है, अकादमिक दृष्टिकोण से नहीं बल्कि एक जिज्ञासु बच्चे के रूप में जो अभी भी खाड़ी में छोटे मिट्टी के बांध बना रहा है और मेंढकों का पीछा कर रहा है। तो यह पुस्तक एक अजीब चीज़ है: यह अंग्रेजी भाषा के भाषा-निर्माण परिदृश्य के माध्यम से एक प्रकृतिवादी की यात्रा है, और प्रकृतिवादी की परंपरा का अनुसरण करते हुए यह अवलोकन, प्रयोग, अटकलें और दस्तावेज़ीकरण को जोड़ती है - ऐसी गतिविधियाँ जिन्हें हम आम तौर पर भाषा के साथ नहीं जोड़ते हैं .",
    appName: "स्पंदन_स्थानीयकरण",
    appTitle: "स्थानीयकरण डेमो"
  };
  static const Map<String, dynamic> EN = {
    theHomePageText: ''' I remember as a child, 
  and as a young budding naturalist, spending all my time observing and testing 
  the world around me—moving pieces, altering the flow of things, 
  and documenting ways the world responded to me. Now,
   as an adult and a professional naturalist, I’ve approached language in the same way,
    not from an academic point of view but as a curious child still building little mud dams in creeks
     and chasing after frogs. So this book is an odd thing: 
     it is a naturalist’s walk through the language-making landscape of the English language,
      and following in the naturalist’s tradition it combines observation, experimentation, speculation,
       and documentation—activities we don’t normally associate with language.''',
    appName: "flutter_localization",
    appTitle: "Localization Demo"
  };
}
