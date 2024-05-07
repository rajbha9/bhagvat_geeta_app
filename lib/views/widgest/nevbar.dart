
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/language_pro.dart';
import '../../provider/theme_pro.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LangProvider langProvider = Provider.of<LangProvider>(context);
    return Drawer(
      backgroundColor: Colors.orangeAccent.withOpacity(0.6),
      child: ListView(
        children: [const SizedBox(height: 20),
          const Image(
            image: AssetImage('asset/img/splash.png'),
          ),const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.all(10),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {
                langProvider.changeLang();
              },
              icon: (langProvider.isLangModel.isLang == false)
                  ? Image(
                color: (themeProvider.themeModel.isLight == false)
                    ? Colors.white
                    : Colors.black,
                // width: 59,
                image: const AssetImage(
                  'asset/img/hindi.png',
                ),
                height: 70,
                width: 90,
                fit: BoxFit.cover,
              )
                  : Image(
                color: (themeProvider.themeModel.isLight == false)
                    ? Colors.white
                    : Colors.black,
                width: 59,
                image: const AssetImage(
                  'asset/img/english.png',
                ),
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {
                themeProvider.changeTheme();
              },
              icon: (themeProvider.themeModel.isLight == false)
                  ? const Icon(
                Icons.light_mode_outlined,
                color: Colors.white,
              )
                  : const Icon(
                Icons.dark_mode_outlined,
              ),
            ),
          ),

        ],
      ),
    );
    //
    //
    //
    //
    // Drawer(
    //   child: ListView(
    //     children: [
    //       ListTile(
    //         leading: Card(
    //           elevation: 8,
    //           child: Container(
    //             width: double.infinity,
    //             child: IconButton(
    //               onPressed: () {
    //                 langProvider.changeLang();
    //               },
    //               icon: (langProvider.isLangModel.isLang == false)
    //                   ? Image(
    //                       color: (themeProvider.themeModel.isLight == false)
    //                           ? Colors.white
    //                           : Colors.black,
    //                       width: 59,
    //                       image: const AssetImage(
    //                         'assets/img/hindi.png',
    //                       ),
    //                       fit: BoxFit.cover,
    //                     )
    //                   : Image(
    //                       color: (themeProvider.themeModel.isLight == false)
    //                           ? Colors.white
    //                           : Colors.black,
    //                       width: 59,
    //                       image: const AssetImage(
    //                         'assets/img/english.png',
    //                       ),
    //                       fit: BoxFit.cover,
    //                     ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       ListTile(
    //         leading: Card(
    //           elevation: 8,
    //           child: Container(
    //             width: double.infinity,
    //             child: IconButton(
    //               onPressed: () {
    //                 themeProvider.changeTheme();
    //               },
    //               icon: (themeProvider.themeModel.isLight == false)
    //                   ? const Icon(
    //                       Icons.light_mode_outlined,
    //                     )
    //                   : const Icon(
    //                       Icons.dark_mode_outlined,
    //                     ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
