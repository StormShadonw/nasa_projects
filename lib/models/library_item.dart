import 'package:nasa_projects/models/destination.dart';
import 'package:nasa_projects/models/file.dart';

class LibraryItem {
  List<File>? files;
  int? id;
  String? title;
  int? libraryItemTypeId;
  int? projectId;
  String? publishedDateString;
  String? url;
  Destination? contentType;
  String? caption;
  File? file;
  String? description;
  bool? primary;

  LibraryItem(
      {this.files,
      this.id,
      this.title,
      this.libraryItemTypeId,
      this.projectId,
      this.publishedDateString,
      this.url,
      this.contentType,
      this.caption,
      this.file,
      this.description,
      this.primary});

  LibraryItem.fromJson(Map<String, dynamic> json) {
    if (json['files'] != null) {
      files = <File>[];
      json['files'].forEach((v) {
        files!.add(new File.fromJson(v));
      });
    }
    id = json['id'];
    title = json['title'];
    libraryItemTypeId = json['libraryItemTypeId'];
    projectId = json['projectId'];
    publishedDateString = json['publishedDateString'];
    url = json['url'];
    contentType = json['contentType'] != null
        ? new Destination.fromJson(json['contentType'])
        : null;
    caption = json['caption'];
    file = json['file'] != null ? new File.fromJson(json['file']) : null;
    description = json['description'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.files != null) {
      data['files'] = this.files!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['title'] = this.title;
    data['libraryItemTypeId'] = this.libraryItemTypeId;
    data['projectId'] = this.projectId;
    data['publishedDateString'] = this.publishedDateString;
    data['url'] = this.url;
    if (this.contentType != null) {
      data['contentType'] = this.contentType!.toJson();
    }
    data['caption'] = this.caption;
    if (this.file != null) {
      data['file'] = this.file!.toJson();
    }
    data['description'] = this.description;
    data['primary'] = this.primary;
    return data;
  }
}
