import 'package:terbilang/src/terbilang.dart';
import 'package:terbilang/src/terbilang_bck.dart' as prefix0;

void main() {
  Terbilang _terbilang = Terbilang(number: 999);
  print(_terbilang.result());


  //OLD VERSION
  prefix0.Terbilang _terbilangBck = prefix0.Terbilang(number: 999);
  print(_terbilangBck.result());
}
