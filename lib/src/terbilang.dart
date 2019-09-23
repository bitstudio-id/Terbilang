import 'package:terbilang/src/data.dart';

class Terbilang {
  dynamic number;

  String hypen;
  String conjunction;
  String separator;
  String negative;
  String decimal;
  Map dictionary;
  Map short;
  String prefix;
  String suffix;
  String prenum;

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

  Terbilang({this.number}) {
    this.lang = "id";

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

  String result() {
    return this._convert(number: this.number);
  }

  String _convert({dynamic number}) {
    // if (!this._isNumeric(number.toString())) {
    //   print("EXCEPTION::NUMBER_NOT_VALID");
    //   return "-";
    // }

    // parse quoted value
    List<String> _tmp = double.parse(number.toString()).toString().split(".");
    // this._p = int.parse(_tmp[0]);
    // this._f = _tmp[1];
    // this._p = this.number;

    int _number = int.parse(_tmp[0]);

    String _string = "";

    if (_number < 21) {
      _string = this.dictionary[_number];
    } else if (_number >= 21 && _number < 100) {
      int tens = (_number ~/ 10) * 10;
      int units = _number % 10;

      _string = this.dictionary[tens];
      if (units != 0) {
        _string += this.hypen + this.dictionary[units];
      }
    } else if (_number >= 100 && _number < 1000) {
      int hundreds = _number ~/ 100;
      int remainder = _number % 100;
      if (this.prenum != "") {
        String _lead = _number.toString().substring(0, 1);
        _string = (int.parse(_lead) == 1
                ? this.prenum
                : this.dictionary[hundreds] + " ") +
            this.dictionary[100];
      } else {
        _string = this.dictionary[hundreds] + " " + this.dictionary[100];
      }

      if (remainder != 0) {
        _string += this.conjunction + this._convert(number: remainder);
      }
    }

    return _string;
  }
}
