class ProgramExecutive {
  int? contactId;
  bool? canUserEdit;
  String? firstName;
  String? lastName;
  String? fullName;
  String? fullNameInverted;
  String? middleInitial;
  String? primaryEmail;
  bool? publicEmail;
  bool? nacontact;

  ProgramExecutive(
      {this.contactId,
      this.canUserEdit,
      this.firstName,
      this.lastName,
      this.fullName,
      this.fullNameInverted,
      this.middleInitial,
      this.primaryEmail,
      this.publicEmail,
      this.nacontact});

  ProgramExecutive.fromJson(Map<String, dynamic> json) {
    contactId = json['contactId'];
    canUserEdit = json['canUserEdit'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    fullName = json['fullName'];
    fullNameInverted = json['fullNameInverted'];
    middleInitial = json['middleInitial'];
    primaryEmail = json['primaryEmail'];
    publicEmail = json['publicEmail'];
    nacontact = json['nacontact'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contactId'] = this.contactId;
    data['canUserEdit'] = this.canUserEdit;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['fullName'] = this.fullName;
    data['fullNameInverted'] = this.fullNameInverted;
    data['middleInitial'] = this.middleInitial;
    data['primaryEmail'] = this.primaryEmail;
    data['publicEmail'] = this.publicEmail;
    data['nacontact'] = this.nacontact;
    return data;
  }
}
