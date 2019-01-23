import 'package:flutter/material.dart';
import 'i18n/translations.dart';
import 'i18n/translation_delegate.dart';
import 'tabs.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Mycook',
      home: Tabs(),
      localizationsDelegates: [
        TranslationDelegate()
      ],
      );
  }
}