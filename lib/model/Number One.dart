import 'package:app035numbersapi/model/Numbers.dart';

class Number1 {
  Numbers data;

  Number1.fromJson(Map<String, dynamic> json)
      : data = Numbers.fromJson(json["data"]);

  Map<String, dynamic> toJson() => {
        "malumot": data.toJson(),
      };
}
