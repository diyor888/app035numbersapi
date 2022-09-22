class Numbers {
  String text;
  int year;
  int number;
  bool found;
  String type;

  Numbers(
      {required this.text,
      required this.year,
      required this.number,
      required this.found,
      required this.type});
  Numbers.fromJson(Map<String, dynamic> json)
      : text = json["text"],
        year = json["year"],
        number = json["number"],
        found = json["found"],
        type = json["type"];

  Map<String, dynamic> toJson() => {
        "text": text,
        "year": year,
        "number": number,
        "found": found,
        "type": type,
      };
}
