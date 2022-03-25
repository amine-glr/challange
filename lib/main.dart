import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //textTheme:,
        fontFamily: GoogleFonts.raleway().fontFamily,
      ),
      home: MyHomePage(
        title: 'Cubtale',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = [
    'gsokljgsljk',
    'goaspjdgsojwa',
    'gsokldjgsk',
    'goaspjdgpojwatdy',
    'gsokldjgsljk',
    'goaspj',
    'ksgspdgksgkğ',
    'fsdfghljklykjde',
    'fkdkpdgkpdkg',
    'ksdlşgkkgdğ',
    'dlsglğgpdlshğ',
    'fskfspdgkpsg',
    'lsdplgğslgg',
    'lfslgğpsldgs',
    'lğpslfğpslg',
    'flspdlgğspg',
    'sfgsg',
  ];
  @override
  Widget build(BuildContext context) {
    final devicepixelratio = MediaQuery.of(context).devicePixelRatio;
    final textpixelratio = MediaQuery.of(context).textScaleFactor;
    print(devicepixelratio);
    print(textpixelratio);
    int count = 3;

    if (textpixelratio == 1) {
      count = 3;
    }
    if (textpixelratio < 1) {
      count = 4;
    }
    if (textpixelratio > 1) {
      count = 2;
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.title,
            style:
                TextStyle(color: Colors.teal[500], fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
        ),
        itemCount: items.length - 1,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                items[index],
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                items[index + 1],
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          );
        },
      ),
    );
  }
}
