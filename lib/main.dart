import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primaryColor: Colors.pinkAccent,
        dividerTheme: DividerThemeData(indent: 32, endIndent: 32),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(
          const TextTheme(
              titleLarge: TextStyle(fontWeight: FontWeight.bold),
              titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              bodyMedium: TextStyle(fontSize: 16),
              bodySmall: TextStyle(
                  fontSize: 15, color: Color.fromARGB(200, 255, 255, 255))),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Student\'s Profile'),
          actions: const [
            Icon(CupertinoIcons.chat_bubble),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: Icon(CupertinoIcons.ellipsis_vertical),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/profile_image.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Moawezz Dehghani',
                          style: Theme.of(context).textTheme.titleSmall),
                      SizedBox(
                        height: 2,
                      ),
                      Text('Django & Flutter dev'),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.location_solid,
                              size: 14,
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color),
                          SizedBox(
                            width: 2,
                          ),
                          Text('Iran, Chabahar',
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      )
                    ],
                  ),
                ),
                Icon(CupertinoIcons.heart,
                    color: Theme.of(context).primaryColor),
              ]),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            Divider(),
          ],
        ));
  }
}
