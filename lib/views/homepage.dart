import 'package:bhagvat_geeta/provider/json_data_pro.dart';
import 'package:bhagvat_geeta/views/widgest/nevbar.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:provider/provider.dart';

import '../provider/language_pro.dart';
import '../provider/theme_pro.dart';
import 'dateilpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    JsonDataProvider dataProvider = Provider.of<JsonDataProvider>(context);
    ThemeProvider themeProviderFalse =
        Provider.of<ThemeProvider>(context, listen: false);
    LangProvider langProvider = Provider.of<LangProvider>(context);
    LangProvider langProviderFalse =
        Provider.of<LangProvider>(context, listen: false);
    dataProvider.getGeetaData();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              'asset/img/Shri Krishna Quotes from Bhagavad Gita _ Hindi _ Mahabharat.jpeg'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Bhagavad Geeta',
            style: TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        drawer: const Navbar(),
        body: ListView(
          children: dataProvider.newData.map(
            (e) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GlassmorphicContainer(
                  height: 100,
                  width: double.infinity,
                  blur: 1,
                  borderRadius: 20,
                  border: 0.7,
                  linearGradient: LinearGradient(
                    colors: [
                      const Color(0xFFFFFFFF).withOpacity(0.2),
                      const Color(0xFFFFFFFF).withOpacity(0.5),
                    ],
                    stops: const [
                      0.1,
                      1,
                    ],
                  ),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.5),
                      const Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Text(
                        e.chapterNumber.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      title: (langProvider.isLangModel.isLang == false)
                          ? Text(
                              e.nameMeaning,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            )
                          : Text(
                              e.name,
                            ),
                      subtitle: Text(
                        e.nameTranslation,
                        style: const TextStyle(fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailScreen(geeta: e);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
