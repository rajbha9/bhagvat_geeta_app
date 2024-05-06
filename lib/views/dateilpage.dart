import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:provider/provider.dart';

import '../models/json_data_model.dart';
import '../provider/language_pro.dart';

class DetailScreen extends StatelessWidget {
  JsonDataModel geeta;
  DetailScreen({super.key, required this.geeta});

  @override
  Widget build(BuildContext context) {
    LangProvider langProvider = Provider.of<LangProvider>(context);
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
          elevation: 15,
          centerTitle: true,
          title: (langProvider.isLangModel.isLang == false)
              ? Text(
                  geeta.nameMeaning,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Text(geeta.name),
        ),
        body: ListView(
          children: [
            GlassmorphicContainer(
              height: 80,
              width: double.infinity,
              blur: 1,
              borderRadius: 10,
              border: 0.7,
              linearGradient: LinearGradient(
                colors: [
                  const Color(0xFFFFFFFF).withOpacity(0.5),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      (langProvider.isLangModel.isLang == false)
                          ? 'Chapter No. : ${geeta.chapterNumber}'
                          : 'अध्याय संख्या. : ${geeta.chapterNumber}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      (langProvider.isLangModel.isLang == false)
                          ? 'Chapter Name : ${geeta.nameMeaning}'
                          : 'अध्याय का नाम : ${geeta.name}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/img/krishna.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.topLeft,
              child: (langProvider.isLangModel.isLang == false)
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        geeta.chapterSummary,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        geeta.chapterSummaryHindi,
                        style: const TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
