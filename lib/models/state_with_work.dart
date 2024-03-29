import 'package:nasa_projects/models/country.dart';

class StatesWithWork {
  String? abbreviation;
  Country? country;
  int? countryId;
  String? name;
  int? stateTerritoryId;

  StatesWithWork(
      {this.abbreviation,
      this.country,
      this.countryId,
      this.name,
      this.stateTerritoryId});

  StatesWithWork.fromJson(Map<String, dynamic> json) {
    abbreviation = json['abbreviation'];
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    countryId = json['countryId'];
    name = json['name'];
    stateTerritoryId = json['stateTerritoryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['abbreviation'] = this.abbreviation;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    data['countryId'] = this.countryId;
    data['name'] = this.name;
    data['stateTerritoryId'] = this.stateTerritoryId;
    return data;
  }
}
