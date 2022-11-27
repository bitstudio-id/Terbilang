/// A simple library to convert number or date on dart, which supports multilanguage and other coolstuff,
/// very easy to use.
///
/// A open source project authorized by [http://bitstudio.id](http://bitstudio.id).
library terbilang;

import 'dart:math';

import 'package:terbilang/data.dart';

/// The common config for the Terbilang instance.
/// `data.dart` is a instance of [Map]
class Terbilang {
  //numeric holder from construct
  dynamic number;

  //the sign (-) used to join words to indicate that they have a combined
  String? hypen;

  //the action or an instance of two or more events or things occurring at the same point
  String? conjunction;

  //separator.
  String? separator;

  //word or statement that expression on negative number
  String? negative;

  //word to use on decimal / fraction number
  String? decimal;

  //a resource that lists the words of a language (typically in alphanumeric order) and gives their meaning, or gives the equivalent words in a different language
  Map? dictionary;

  //a resurce that list short text on number
  Map? short;

  String? prefix;
  String? suffix;

  String? prenum;

  String lang;

  Map shortDividers = {
    "kilo": 1000,
    "million": 1000000,
    "billion": 1000000000,
    "trillion": 1000000000000,
  };

  Map shortDividedAliases = {
    'k': 'kilo',
    'm': 'million',
    'b': 'billion',
    't': 'trillion',
  };

  Terbilang({this.number, this.lang = "id"}) {
    this.lang = lang;
    this.hypen = data[this.lang]["hypen"];
    this.conjunction = data[this.lang]["conjunction"];
    this.separator = data[this.lang]["separator"];
    this.negative = data[this.lang]["negative"];
    this.decimal = data[this.lang]["decimal"];
    this.dictionary = data[this.lang]["dictionary"];
    this.prefix = data[this.lang]["prefix"];
    this.suffix = data[this.lang]["suffix"];
    this.prenum = data[this.lang]["prenum"];
    this.short = data[this.lang]["short"];
  }

  // get a result if number is identify fron constrctor
  String result() {
    return this.make(number: this.number);
  }

  String make({dynamic number, String? prefix, String? suffix}) {
    // parse quoted value and separate to know what os base & fraction number
    List<String> _tmp = double.parse(number.toString()).toString().split(".");

    this.prefix = prefix ?? "";
    this.suffix = suffix ?? "";

    int _number = int.parse(_tmp[0]);
    int _fraction = int.parse(_tmp[1]);
    String _string = "";

    //make it negative and absolute number
    if (_number < 0) {
      _string += this.negative ?? "";
      _number = _abs(_number);
    }

    if (_number < 21) {
      _string += this.dictionary?[_number];
    } else if (_number >= 21 && _number < 100) {
      int tens = (_number ~/ 10) * 10;
      int units = _number % 10;

      _string += this.dictionary?[tens];
      if (units != 0) {
        _string += this.hypen ?? "" + this.dictionary?[units];
      }
    } else if (_number >= 100 && _number < 1000) {
      int hundreds = _number ~/ 100;
      int remainder = _number % 100;
      if (this.prenum != "") {
        String _lead = _number.toString().substring(0, 1);
        _string += (int.parse(_lead) == 1
                ? this.prenum
                : this.dictionary?[hundreds] + " ") +
            this.dictionary?[100];
      } else {
        _string += this.dictionary?[hundreds] + " " + this.dictionary?[100];
      }

      if (remainder != 0) {
        _string += this.conjunction ?? "" + this.make(number: remainder);
      }
    } else {
      int _log = _logBase(double.parse(_number.toString()), 1000).floor();
      num _baseUnit = pow(1000, _log);
      int _numBaseUnits = (_number ~/ _baseUnit);
      num _remainder = _number % _baseUnit;

      if (this.prenum != "") {
        bool _check = _numBaseUnits == 1 && _baseUnit < 1000000;
        _string +=
            (_check ? this.prenum ?? "" : this.make(number: _numBaseUnits) + " ") +
                this.dictionary?[_baseUnit];
      } else {
        _string +=
            this.make(number: _numBaseUnits) + ' ' + this.dictionary?[_baseUnit];
      }

      if (_remainder != 0) {
        _string += _remainder < 100 ? this.conjunction ?? "" : this.separator ?? "";
        _string += this.make(number: _remainder);
      }
    }

    if (_fraction != 0) {
      _string += this.decimal ?? "";
      _string += _buildFraction(_fraction);
    }

    if (this.prefix != null) {
      _string = this.prefix! + " " + _string;
    }

    // concat current text with suffix
    if (this.suffix != null) {
      _string = _string + " " + this.suffix!;
    }

    return _string.trim();
  }

  String _buildFraction(int args) {
    String _string = "";
    args.toString().runes.forEach((e) {
      var _c = new String.fromCharCode(e);
      _string += this.dictionary?[int.parse(_c)];
      _string += " ";
    });

    return _string.trim();
  }

  // get log base
  double _logBase(double arg, double base) => log(arg) / log(base);

  // get absolute value
  int _abs(int arg) => arg * (-1);
}
