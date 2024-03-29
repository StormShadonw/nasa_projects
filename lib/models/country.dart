class Country {
  String? abbreviation;
  int? countryId;
  String? name;

  Country({this.abbreviation, this.countryId, this.name});

  Country.fromJson(Map<String, dynamic> json) {
    abbreviation = json['abbreviation'];
    countryId = json['countryId'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['abbreviation'] = this.abbreviation;
    data['countryId'] = this.countryId;
    data['name'] = this.name;
    return data;
  }
}
