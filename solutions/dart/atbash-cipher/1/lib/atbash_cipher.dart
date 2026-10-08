class AtbashCipher {
  String encode(String text) {
    final result = <String>[];

    for (final char in text.toLowerCase().split('')) {
      if (_isLetter(char)) {
        result.add(_convert(char));
      } else if (_isNumber(char)) {
        result.add(char);
      }
    }
    final encoded = result.join();
    final groups = <String>[];

    for (var i = 0; i < encoded.length; i += 5) {
      final end = (i + 5 < encoded.length) ? i + 5 : encoded.length;
      groups.add(encoded.substring(i, end));
    }

    return groups.join(' ');
  }

  String decode(String text) {
    final result = <String>[];

    for (final char in text.toLowerCase().split('')) {
      if (_isLetter(char)) {
        result.add(_convert(char));
      } else if (_isNumber(char)) {
        result.add(char);
      }
    }

    return result.join();
  }

  bool _isLetter(String char) {
    return char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122;
  }

  bool _isNumber(String char) {
    return char.codeUnitAt(0) >= 48 && char.codeUnitAt(0) <= 57;
  }

  String _convert(String char) {
    final code = char.codeUnitAt(0);
    return String.fromCharCode(219 - code);
  }
}