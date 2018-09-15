/// Author : Alexi Coard

import 'package:angular/angular.dart';

/**
 *  Format a number to a more human readable format
 *  Can display huge numbers in "trillion, quadrillion" format or scientific notation
 *  Three display styles are available
 *    default : 1 quadrillion
 *    short: 1 Qa
 *    scientifi : 1e5
 *  Usage :
 *    value | numberFormat: 'scientific' => 1.2e12
 *    value | numberFormat: 'short' => 1.2 Qa
 *    value | numberFormat => 1.2 quadrillion
 *
 *  Example :
 *    {{ 1200000 | numberFormat}} => 1.2 million
 */
@Pipe('numberFormat')
class NumberFormatPipe extends PipeTransform {

  final formatLong=[' thousand',' million',' billion',' trillion',' quadrillion',' quintillion',' sextillion',' septillion',' octillion',' nonillion'];
  final longPrefixes=['','un','duo','tre','quattuor','quin','sex','septen','octo','novem'];
  final longSuffixes=['decillion','vigintillion','trigintillion','quadragintillion','quinquagintillion','sexagintillion','septuagintillion','octogintillion','nonagintillion'];
  var formatShort=[' k',' M',' B',' T',' Qa',' Qi',' Sx',' Sp',' Oc',' No'];
  var shortPrefixes=['','Un','Do','Tr','Qa','Qi','Sx','Sp','Oc','No'];
  var shortSuffixes=['D','V','T','Qa','Qi','Sx','Sp','O','N'];

  /**
   * Transform a number to a "readable" form
   */
  String transform(num value, [String type = 'default']) {
    return this.formatValue(value, type);
  }

  /**
   * Format the value given according to the type we want
   */
  String formatValue(num value, String type)
  {
    var base = 0;

    if (value.isInfinite) return 'Infinity';

    //If before 1 000 , return as it is
    if (value < 1000) {
      return '$value';
    }
    //Do no format before
    if (value >= 1000000) {
      // Divide by 1000 as much as needed and find the associated notation
      value /= 1000;
      while(value.round() >= 1000) {
        value /= 1000;
        base++;
      }

      switch(type) {
        case 'scientific':
          return '${value.toStringAsFixed(3)}e${base+1}';
        case 'short' :
          return '${value.toStringAsFixed(3)}' + this.findNotationFromBase(base, true);
        default:
          return '${value.toStringAsFixed(3)}' + this.findNotationFromBase(base);
      }
    }

    //Case if we are between 1 000 and 1 000 000
    return "${value.toInt()}";
  }

  /**
   * Get the prefixes and suffixes needed depending on the base
   */
  String findNotationFromBase(int base, [bool useShortNotation= false]) {
    if(base < 10) {
      return useShortNotation ? formatShort[base] : formatLong[base];
    }

    var prefixIndex = base % 10;
    var suffixIndex = base ~/ 10;

    return useShortNotation ?
           shortPrefixes[prefixIndex] + shortSuffixes[suffixIndex]
           : longPrefixes[prefixIndex] + longSuffixes[suffixIndex];
  }
}