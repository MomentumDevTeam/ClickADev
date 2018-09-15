/// Author : Alexi Coard

@TestOn('vm')

import "package:test/test.dart";

import "package:clickADev/src/pipes/number_format.dart";

void main() {

  group("Number format filter", () {
    NumberFormatPipe pipe = NumberFormatPipe();
    const scientific = 'scientific';
    const short = 'short';

    test("formatting works for very small numbers ", () {
      var numberToFormat = 0.12;

      expect(pipe.transform(numberToFormat), equals('0.1'));
      expect(pipe.transform(numberToFormat, scientific), equals('0.1'));
      expect(pipe.transform(numberToFormat, short), equals('0.1'));
    });
  });
}
