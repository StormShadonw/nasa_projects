import 'package:nasa_projects/models/lku_code_type.dart';

class Destination {
  int? lkuCodeId;
  String? code;
  String? description;
  int? lkuCodeTypeId;
  LkuCodeType? lkuCodeType;

  Destination(
      {this.lkuCodeId,
      this.code,
      this.description,
      this.lkuCodeTypeId,
      this.lkuCodeType});

  Destination.fromJson(Map<String, dynamic> json) {
    lkuCodeId = json['lkuCodeId'];
    code = json['code'];
    description = json['description'];
    lkuCodeTypeId = json['lkuCodeTypeId'];
    lkuCodeType = json['lkuCodeType'] != null
        ? new LkuCodeType.fromJson(json['lkuCodeType'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lkuCodeId'] = this.lkuCodeId;
    data['code'] = this.code;
    data['description'] = this.description;
    data['lkuCodeTypeId'] = this.lkuCodeTypeId;
    if (this.lkuCodeType != null) {
      data['lkuCodeType'] = this.lkuCodeType!.toJson();
    }
    return data;
  }
}
