
import 'dart:ui';

class HYLocalizations {
  final Locale locale;
  HYLocalizations(this.locale);
  static Map<String, Map<String, String>> _localizeValues = {
    "en": {
      "title": "HOME",
    },
    "zh": {
      "title": "首页",
    }
  };
  String get title {
    return _localizeValues[locale.languageCode]["title"];
  }
}