# Terbilang | Number To Words Conversion For Flutter | Dart

Convert number & date to words in any language for Flutter/Dart, this package is inspired from laravel package [riskihajar/terbilang](https://github.com/riskihajar/terbilang)

## Getting Started
Number to words conversion support multi language.
### Supported Language
* `id` | Bahasa Indonesia
* `en` | English
* soon

### Feature
* [Number to Word](https://github.com/bitstudio-id/terbilang#number-to-words)
* [Number to Roman](https://github.com/bitstudio-id/terbilang#number-to-roman)
* [Number Short Hand](https://github.com/bitstudio-id/terbilang#number-short-hand)
* [Datetime to Word](https://github.com/bitstudio-id/terbilang#datetime)
* [Period](https://github.com/bitstudio-id/terbilang#period)

### Add dependency
```yaml
dependencies:
  terbilang: 1.0.4  #latest version
```

#### Pull Request
> Feel free to submit pull requests for desired changes / features / bug fixes... It makes the maintenance of this code much easier as I no longer use Flutter frequently.

>Terbilang supports for number, date (coming soon), and romans (coming soon)

```
import 'package:terbilang/terbilang.dart';
...
Terbilang _terbilang = Terbilang(number: 10000); // u can use any parameter (string, int, double) numeric on costruct

//Terbilang _terbilang = Terbilang(number: "10000");
//Terbilang _terbilang = Terbilang(number: 10000.87);

print(_terbilang.result()); // sepuluh ribu

Terbilang _terbilang1 = Terbilang(number: 1290.56);
print(_terbilang1.result()); // seribu dua ratus sembilan puluh koma lima enam
```

#### Prefix & Suffix
if you set language to id
```
import 'package:terbilang/terbilang.dart';
...
Terbilang _terbilang = Terbilang(); // default language is id
print(_terbilang.make(number : 10000, prefix : "senilai", suffix : "rupiah")); //senilai sepuluh ribu rupiah
```
if you set language to en
```
import 'package:terbilang/terbilang.dart';
...
Terbilang _terbilang = Terbilang(lang : "en"); // default language is id
print(_terbilang.make(number : 6000, suffix : "dollars")); //six hundred dollars
```

### Number to Roman
```
coming soon
```

### Number Shorthand
```
coming soon
```

### DateTime
```
coming soon
```
### Period
```
coming soon
```

#### How to use on flutter

>note : i don't have write widget to use for flutter, but if u really need it, u can write and feel free to make pull request

```
 //how to use on widget
 ... : Container(
     child : Text(Terbilang(number: 10000.87).result())
 );

 //how to use on widget with latest build
 ... : Container(
     child : Text(Terbilang().make(number: 10000.87))
 );
```
### coming soon
another awesome feature
