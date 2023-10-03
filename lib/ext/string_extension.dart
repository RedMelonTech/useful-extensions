extension StringExtension on String {
  String capitalize() {
    try {
      return '${this[0].toUpperCase()}${substring(1)}'.trim();
    } catch (e) {
      return this;
    }
  }

  String capitalizeAll() {
    try {
      final subStrings = split(' ');
      for (int i = 0; i < subStrings.length; i++) {
        subStrings[i] = subStrings[i].capitalize();
      }
      return subStrings.join(' ').trim();
    } catch (e) {
      return this;
    }
  }

  String removeAllWhitespace() {
    return replaceAll(RegExp(r"\s+"), "");
  }
}

extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;
}

String removeDiacriticsFrom(String str) {
  var withDia =
      'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
  var withoutDia =
      'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

  for (int i = 0; i < withDia.length; i++) {
    str = str.replaceAll(withDia[i], withoutDia[i]);
  }

  return str;
}
