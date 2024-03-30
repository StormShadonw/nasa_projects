import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_projects/helpers/errors.dart';
import 'package:nasa_projects/models/project.dart';
import 'package:nasa_projects/providers/data_provider.dart';
import 'package:nasa_projects/widgets/loader.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const String pageRoute = "/homePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = false;
  DataProvider dataProvider = DataProvider();
  List<Project> _projects = [];

  Future<void> getInitData() async {
    setState(() {
      _isLoading = true;
    });

    var result = await dataProvider.getProjects();
    if (result != null) {
      showError(context, result);
    } else {
      _projects = dataProvider.projects;
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    dataProvider = Provider.of<DataProvider>(
      context,
      listen: false,
    );
    getInitData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nasa Projects (${_isLoading ? "..." : _projects.length})",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          child: _isLoading
              ? const Loader()
              : Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemCount: _projects.length,
                      itemBuilder: (context, projectIndex) {
                        return Text(
                          _projects[projectIndex].projectId.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        );
                        // return ListView.builder(
                        //   shrinkWrap: true,
                        //   physics: ClampingScrollPhysics(),
                        //   itemCount: _projects[projectIndex].transitions == null
                        //       ? 0
                        //       : _projects[projectIndex].primaryImage!,
                        //   itemBuilder: (context, index) => ListTile(
                        //     title: Text(
                        //       _projects[projectIndex].transitions![index].path ?? "",
                        //       style: TextStyle(color: Colors.white),
                        //     ),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
