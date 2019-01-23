import 'package:flutter/widgets.dart';

class Translations {
  Translations(this.locale);

  final Locale locale;

  static Translations of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Mycookito',
    },
    'es': {
      'title': 'Mycookito',
    },
  };

  String get(String key) {
    return _localizedValues[locale.languageCode][key];
  }

}