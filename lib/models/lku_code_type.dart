class LkuCodeType {
  String? codeType;
  String? description;

  LkuCodeType({this.codeType, this.description});

  LkuCodeType.fromJson(Map<String, dynamic> json) {
    codeType = json['codeType'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codeType'] = this.codeType;
    data['description'] = this.description;
    return data;
  }
}
