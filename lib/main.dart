import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nasa_projects/pages/home_page.dart';
import 'package:nasa_projects/providers/data_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          background: Color.fromRGBO(5, 1, 39, 1),
          brightness: Brightness.dark,
          primary: Color.fromRGBO(25, 13, 120, 1),
          secondary: Color.fromARGB(1, 133, 99, 218),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.redAccent,
          onError: Colors.white,
          onBackground: Colors.white,
          surface: Colors.white,
          onSurface: Colors.white,
        ),
        textTheme: TextTheme(),
        useMaterial3: true,
      ),
      routes: {HomePage.pageRoute: (context) => const HomePage()},
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => DataProvider(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
