import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'translations.dart';

class TranslationDelegate extends LocalizationsDelegate<Translations> {
  const TranslationDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<Translations> load(Locale locale) {
    return SynchronousFuture<Translations>(Translations(locale));
  }

  @override
  bool shouldReload(TranslationDelegate old) => false;
}