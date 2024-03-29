import 'package:nasa_projects/models/country.dart';
import 'package:nasa_projects/models/state_territory.dart';

class LeadOrganization {
  String? acronym;
  bool? canUserEdit;
  String? city;
  Country? country;
  int? countryId;
  bool? external;
  int? linkCount;
  int? organizationId;
  String? organizationName;
  String? organizationType;
  StateTerritory? stateTerritory;
  int? stateTerritoryId;
  bool? naorganization;
  String? organizationTypePretty;

  LeadOrganization(
      {this.acronym,
      this.canUserEdit,
      this.city,
      this.country,
      this.countryId,
      this.external,
      this.linkCount,
      this.organizationId,
      this.organizationName,
      this.organizationType,
      this.stateTerritory,
      this.stateTerritoryId,
      this.naorganization,
      this.organizationTypePretty});

  LeadOrganization.fromJson(Map<String, dynamic> json) {
    acronym = json['acronym'];
    canUserEdit = json['canUserEdit'];
    city = json['city'];
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    countryId = json['countryId'];
    external = json['external'];
    linkCount = json['linkCount'];
    organizationId = json['organizationId'];
    organizationName = json['organizationName'];
    organizationType = json['organizationType'];
    stateTerritory = json['stateTerritory'] != null
        ? new StateTerritory.fromJson(json['stateTerritory'])
        : null;
    stateTerritoryId = json['stateTerritoryId'];
    naorganization = json['naorganization'];
    organizationTypePretty = json['organizationTypePretty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acronym'] = this.acronym;
    data['canUserEdit'] = this.canUserEdit;
    data['city'] = this.city;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    data['countryId'] = this.countryId;
    data['external'] = this.external;
    data['linkCount'] = this.linkCount;
    data['organizationId'] = this.organizationId;
    data['organizationName'] = this.organizationName;
    data['organizationType'] = this.organizationType;
    if (this.stateTerritory != null) {
      data['stateTerritory'] = this.stateTerritory!.toJson();
    }
    data['stateTerritoryId'] = this.stateTerritoryId;
    data['naorganization'] = this.naorganization;
    data['organizationTypePretty'] = this.organizationTypePretty;
    return data;
  }
}
