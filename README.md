# Terbilang | Number To Words Conversion For Flutter | Dart

Convert number & date to words in any language for Flutter/Dart, this package is inspired from laravel package (riskihajar/terbilang)[https://github.com/riskihajar/terbilang]

## Getting Started
Number to words conversion support multi language.
### Supported Language
* `id` | Bahasa Indonesia
* `en` | English (soon)
* `pt` | Portuguese (soon)
* soon

### Feature
* [Number to Word](https://github.com/bitstudio-id/terbilang#number-to-words)
* [Number to Roman](https://github.com/bitstudio-id/terbilang#number-to-roman)
* [Number Short Hand](https://github.com/bitstudio-id/terbilang#number-short-hand)
* [Datetime to Word](https://github.com/bitstudio-id/terbilang#datetime)
* [Period](https://github.com/bitstudio-id/terbilang#period)
*
### Add dependency
```yaml
dependencies:
  terbilang: 0.0.3  #latest version
```

#### Pull Request
> Feel free to submit pull requests for desired changes / features / bug fixes... It makes the maintenance of this code much easier as I no longer use Flutter frequently.

>Terbilang supports for date (coming soon) and number

### Examples
#### Number To Words

```
    Terbilang _terbilang = Terbilang(number: 10000); // u can use any parameter (string, int, double) numeric on costruct

    //Terbilang _terbilang = Terbilang(number: "10000");
    //Terbilang _terbilang = Terbilang(number: 10000.87);

    print(_terbilang.result()); // sepuluh ribu

    Terbilang _terbilang1 = Terbilang(number: 1290.56);
    print(_terbilang1.result()); // seribu dua ratus sembilan puluh koma lima enam
```

#### How to change default language
```
 //wait for it, it will available on next version :')
```

#### How to use on date
```
 //wait for it, it will available on next version :')
```

#### How to use on flutter
```
 //how to use on widget
 ... : Container(
     child : Text(Terbilang(number: 10000.87).result())
 );
```
### coming soon
another awesome feature
