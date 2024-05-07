import 'package:bhagvat_geeta/provider/json_data_pro.dart';
import 'package:bhagvat_geeta/provider/language_pro.dart';
import 'package:bhagvat_geeta/provider/theme_pro.dart';
import 'package:bhagvat_geeta/views/homepage.dart';
import 'package:bhagvat_geeta/views/splesh.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ThemeProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => JsonDataProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => LangProvider(),
          )
        ],
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode:
                (Provider.of<ThemeProvider>(context).themeModel.isLight !=
                        false)
                    ? ThemeMode.light
                    : ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            initialRoute: 'splesh',
            routes: {
              '/': (context) => const HomePage(),
              'splesh': (context) => const Splesh(),
              // 'language_page': (context) => const language_page(),
            },
          );
        });
  }
}
