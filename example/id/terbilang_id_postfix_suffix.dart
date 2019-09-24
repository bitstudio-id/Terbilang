import 'package:terbilang/terbilang.dart';

void main() {
  Terbilang _terbilang = Terbilang(); //default locale is id

  String _word_1 = _terbilang.make(number: 1, prefix: "jumlah");
  print(_word_1); // jumlah satu

  String _word_19500 = _terbilang.make(number: 19500, suffix: "rupiah");
  print(_word_19500); // sembilan belas ribu lima ratus rupiah

  String _word_159200 = _terbilang.make(number: 159200, prefix: "senilai", suffix: "rupiah");
  print(_word_159200); // sembilan belas ribu lima ratus rupiah
}
