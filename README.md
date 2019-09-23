# Terbilang

Convert number & date to words in any language for Flutter

## Getting Started
### Add dependency
```yaml
dependencies:
  terbilang: 0.0.3  #latest version
```

#### Pull Request
> Feel free to submit pull requests for desired changes / features / bug fixes... It makes the maintenance of this code much easier as I no longer use Flutter frequently.

### How to use on number
Terbilang supports for date (coming soon) and number

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
