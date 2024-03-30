import 'package:flutter/material.dart';
import 'package:nasa_projects/pages/home_page.dart';
import 'package:nasa_projects/providers/data_provider.dart';
import 'package:provider/provider.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          onSurface: Colors.black87,
        ),
        textTheme: TextTheme(),
        useMaterial3: true,
      ),
      routes: {
        HomePage.pageRoute: (context) => const HomePage(),
      },
      home: AnimatedSplashScreen(
        centered: true,
        duration: 3000,
        animationDuration: const Duration(seconds: 2),
        backgroundColor: Colors.black,
        splashIconSize: size.height,
        splash: Expanded(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
              ),
            ),
            // color: Colors.red,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/nasa_logo.png",
                  width: size.width * 0.65,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "NASA projects and patents",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        nextScreen: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => DataProvider(),
            ),
          ],
          child: const HomePage(),
        ),
      ),
    );
  }
}
