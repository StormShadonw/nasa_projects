class File {
  String? fileExtension;
  int? fileId;
  String? fileSizeString;

  File({this.fileExtension, this.fileId, this.fileSizeString});

  File.fromJson(Map<String, dynamic> json) {
    fileExtension = json['fileExtension'];
    fileId = json['fileId'];
    fileSizeString = json['fileSizeString'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fileExtension'] = this.fileExtension;
    data['fileId'] = this.fileId;
    data['fileSizeString'] = this.fileSizeString;
    return data;
  }
}
