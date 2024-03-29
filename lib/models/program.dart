import 'package:nasa_projects/models/responsible.dart';

class Program {
  String? acronym;
  bool? active;
  String? description;
  int? programId;
  ResponsibleMd? responsibleMd;
  int? responsibleMdId;
  int? stockImageFileId;
  String? title;

  Program(
      {this.acronym,
      this.active,
      this.description,
      this.programId,
      this.responsibleMd,
      this.responsibleMdId,
      this.stockImageFileId,
      this.title});

  Program.fromJson(Map<String, dynamic> json) {
    acronym = json['acronym'];
    active = json['active'];
    description = json['description'];
    programId = json['programId'];
    responsibleMd = json['responsibleMd'] != null
        ? new ResponsibleMd.fromJson(json['responsibleMd'])
        : null;
    responsibleMdId = json['responsibleMdId'];
    stockImageFileId = json['stockImageFileId'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acronym'] = this.acronym;
    data['active'] = this.active;
    data['description'] = this.description;
    data['programId'] = this.programId;
    if (this.responsibleMd != null) {
      data['responsibleMd'] = this.responsibleMd!.toJson();
    }
    data['responsibleMdId'] = this.responsibleMdId;
    data['stockImageFileId'] = this.stockImageFileId;
    data['title'] = this.title;
    return data;
  }
}
