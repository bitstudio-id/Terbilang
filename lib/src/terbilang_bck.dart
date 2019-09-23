library terbilang;

class Terbilang {
  List<String> _digits = [
    "",
    "satu",
    "dua",
    "tiga",
    "empat",
    "lima",
    "enam",
    "tujuh",
    "delapan",
    "sembilan",
    "sepuluh",
    "sebelas",
  ];

  Map<String, String> _fractions = {
    "0": "nol",
    "1": "satu",
    "2": "dua",
    "3": "tiga",
    "4": "empat",
    "5": "lima",
    "6": "enam",
    "7": "tujuh",
    "8": "delapan",
    "9": "sembilan",
  };

  dynamic number;
  int _p = 0;
  String _f = "";
  String _result = "";
  String _fraction = "";

  Terbilang({this.number}) {
    // print(double.parse(this.number.toString()));
    List<String> _tmp =
        double.parse(this.number.toString()).toString().split(".");
    this._p = int.parse(_tmp[0]);
    this._f = _tmp[1];
    this._p = this.number;
  }

  String result() {
    String pText = this._convert(this._p);

    if (this._f != "0") {
      pText += " koma ";
      String ftext = this._convertFraction(this._f);

      pText += ftext;
    }

    return pText;
  }

  String _convertFraction(String _number) {
    _number.runes.forEach((e) {
      var _c = new String.fromCharCode(e);
      this._fraction += this._fractions[_c.toString()] + " ";
    });

    return this._fraction.trim();
  }

  String _convert(int _number) {
    if (_number < 12) {
      _result = this._digits[_number];
    } else if (_number >= 12 && _number <= 19) {
      _result = this._digits[_number % 10] + " belas";
    } else if (_number >= 20 && _number <= 99) {
      _result = this._convert((_number ~/ 10)) +
          " puluh " +
          this._digits[_number % 10];
    } else if (_number >= 100 && _number <= 199) {
      _result = "seratus " + this._convert(_number % 100);
    } else if (_number >= 200 && _number <= 999) {
      _result = this._convert(_number ~/ 100) +
          " ratus " +
          this._convert(_number % 100);
    } else if (_number >= 1000 && _number <= 1999) {
      _result = "seribu " + this._convert(_number % 1000);
    } else if (_number >= 2000 && _number <= 999999) {
      _result = this._convert(_number ~/ 1000) +
          " ribu " +
          this._convert(_number % 1000);
    } else if (_number >= 1000000 && _number <= 999999999) {
      _result = this._convert(_number ~/ 1000000) +
          " juta " +
          this._convert(_number % 1000000);
    } else if (_number >= 1000000000 && _number <= 999999999999) {
      _result = this._convert(_number ~/ 1000000000) +
          " milyar " +
          this._convert(_number % 1000000000);
    } else if (_number >= 1000000000000 && _number <= 999999999999999) {
      _result = this._convert(_number ~/ 1000000000000) +
          " trilyun " +
          this._convert(_number % 1000000000000);
    } else if (_number >= 1000000000000000 && _number <= 999999999999999999) {
      _result = this._convert(_number ~/ 1000000000000000) +
          " kuadriliun " +
          this._convert(_number % 1000000000000000);
    }
    return this._result;
  }
}
