import 'package:terbilang/terbilang.dart';

void main() {
  Terbilang _terbilang = Terbilang(lang: "en"); //change locale to en

  String _word_1 = _terbilang.make(number: 10.5, prefix: "average is");
  print(_word_1); // average is ten point five

  String _word_19500 = _terbilang.make(number: 195, suffix: "dollars");
  print(_word_19500); // one hundred and ninety-five dollars

  String _word_159200 = _terbilang.make(number: 100, prefix: "total", suffix: "pieces");
  print(_word_159200); // sembilan belas ribu lima ratus rupiah
}
