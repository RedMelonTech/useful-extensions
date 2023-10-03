import 'package:flutter_test/flutter_test.dart';

import 'package:useful_extensions/useful_extensions.dart';

void main() {
  test('String', () {
    var test = 'test téstã';
    expect(test.capitalize(), 'Test téstã');
    expect(test.capitalizeAll(), 'Test Téstã');
    expect(removeDiacriticsFrom(test), 'test testa');
  });

  test('DateTime', () {
    //
  });
}
