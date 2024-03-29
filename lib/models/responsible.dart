class ResponsibleMd {
  String? acronym;
  bool? canUserEdit;
  String? city;
  bool? external;
  int? linkCount;
  int? organizationId;
  String? organizationName;
  String? organizationType;
  bool? naorganization;
  String? organizationTypePretty;

  ResponsibleMd(
      {this.acronym,
      this.canUserEdit,
      this.city,
      this.external,
      this.linkCount,
      this.organizationId,
      this.organizationName,
      this.organizationType,
      this.naorganization,
      this.organizationTypePretty});

  ResponsibleMd.fromJson(Map<String, dynamic> json) {
    acronym = json['acronym'];
    canUserEdit = json['canUserEdit'];
    city = json['city'];
    external = json['external'];
    linkCount = json['linkCount'];
    organizationId = json['organizationId'];
    organizationName = json['organizationName'];
    organizationType = json['organizationType'];
    naorganization = json['naorganization'];
    organizationTypePretty = json['organizationTypePretty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acronym'] = this.acronym;
    data['canUserEdit'] = this.canUserEdit;
    data['city'] = this.city;
    data['external'] = this.external;
    data['linkCount'] = this.linkCount;
    data['organizationId'] = this.organizationId;
    data['organizationName'] = this.organizationName;
    data['organizationType'] = this.organizationType;
    data['naorganization'] = this.naorganization;
    data['organizationTypePretty'] = this.organizationTypePretty;
    return data;
  }
}
