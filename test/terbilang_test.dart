import 'package:flutter_test/flutter_test.dart';
import 'package:terbilang/src/terbilang_bck.dart';

void main() {
  group('Counter', () {
    test('test nilai 1 - 11', () {
      final _terbilang = Terbilang(number: 1);
      expect(_terbilang.result(), "satu");
    });

    test('test nilai 1 - 11', () {
      final _terbilang = Terbilang(number: 11);
      expect(_terbilang.result(), "sebelas");
    });
  });
}
