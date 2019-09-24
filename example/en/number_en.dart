import 'package:terbilang/terbilang.dart';

void main() {
  Terbilang _terbilang = Terbilang(lang : "en"); // change locale to en

  String _word_1 = _terbilang.make(number: 1);
  print(_word_1); // one

  String _word_19 = _terbilang.make(number: 19);
  print(_word_19); // nineteen
}
