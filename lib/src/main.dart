import 'package:terbilang/src/terbilang.dart';
import 'package:terbilang/src/terbilang_id.dart' as prefix0;

void main() {
  // Terbilang _terbilang = Terbilang(lang: "en");
  Terbilang _terbilang = Terbilang(lang: "id");
  print(_terbilang.make(number: 12000, prefix: "senilai", suffix: "rupiah"));
}
