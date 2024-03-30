import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nasa_projects/models/project.dart';
import 'package:nasa_projects/utils/consts.dart';

class DataProvider with ChangeNotifier {
  final dio = Dio();
  final List<Project> _projects = [];
  List<Project> get projects => _projects;

  Future<String?> getProjects() async {
    try {
      _projects.clear();
      final response =
          await dio.get('${NASA_API}projects?updatedSince=2024-03-01');
      print(response);
      var responseData = response.data["projects"] as List<dynamic>;
      if (responseData.length > 0) {
        for (var element in responseData) {
          final eachElementResponse =
              await dio.get('${NASA_API}projects/${element["projectId"]}');
          if (eachElementResponse.data != null) {
            _projects
                .add(Project.fromJson(eachElementResponse.data["project"]));
            print(eachElementResponse.data["project"]);
            print(responseData.length);
          }
        }
      }
      return null;
    } catch (error) {
      return error.toString();
    }
  }
}
