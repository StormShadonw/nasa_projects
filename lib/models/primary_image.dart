import 'package:nasa_projects/models/file.dart';

class PrimaryImage {
  File? file;
  int? id;
  String? description;
  int? projectId;
  String? publishedDateString;

  PrimaryImage(
      {this.file,
      this.id,
      this.description,
      this.projectId,
      this.publishedDateString});

  PrimaryImage.fromJson(Map<String, dynamic> json) {
    file = json['file'] != null ? new File.fromJson(json['file']) : null;
    id = json['id'];
    description = json['description'];
    projectId = json['projectId'];
    publishedDateString = json['publishedDateString'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.file != null) {
      data['file'] = this.file!.toJson();
    }
    data['id'] = this.id;
    data['description'] = this.description;
    data['projectId'] = this.projectId;
    data['publishedDateString'] = this.publishedDateString;
    return data;
  }
}
