import 'package:terbilang/terbilang.dart';

void main() {
  Terbilang _terbilang = Terbilang(); //default locale is id

  String _word_1 = _terbilang.make(number: 1);
  print(_word_1); // satu

  String _word_19 = _terbilang.make(number: 19);
  print(_word_19); // sembilan belas
}
