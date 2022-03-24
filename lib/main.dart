import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    final devicepixel = MediaQuery.of(context).devicePixelRatio;
    print(textScale);
    print(devicepixel);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                widget.title,
                style: TextStyle(
                    color: Colors.teal[500], fontWeight: FontWeight.w500),
              ),
            ),
          ),
          body: GridView.count(
            crossAxisCount: 3,
            children: [
              Block(
                text1: 'gsokljgsljk',
                text2: 'goaspjdgsojwa',
              ),
              Block(
                text1: 'gsokldjgsk',
                text2: 'goaspjdgpojwatdy',
              ),
              Block(
                text1: 'gsokldjgsljk',
                text2: 'goaspj',
              ),
              Block(
                text1: 'gsokldjgljk',
                text2: 'goaspjdgsojwatydk',
              ),
              Block(
                text1: 'gsoklsljk',
                text2: 'goaspjdgpasojdg',
              ),
              Block(
                text1: 'gsokljk',
                text2: 'goaspjdgpasojwaf',
              ),
              Block(
                text1: 'gsoklgsljk',
                text2: 'goaspjdgpasojwa',
              ),
              Block(
                text1: 'gsokldljk',
                text2: 'goaspjdgsojwa',
              ),
              Block(
                text1: 'gsokldjgsljk',
                text2: 'goaspjdgpasojwa',
              ),
              Block(
                text1: 'gsokldjgsljk',
                text2: 'goaspjdgpasojwa',
              ),
              Block(
                text1: 'gsokldjgsljk',
                text2: 'goaspjdgpaso',
              ),
              Block(
                text1: 'gsokldjgsljk',
                text2: 'goaspjjwa',
              ),
              Block(
                text1: 'gsokldjgsljk',
                text2: 'goaspjdasojwa',
              ),
              Block(
                text1: 'gsokldjgsljk',
                text2: 'goaswa',
              ),
              Block(
                text1: 'gsokldjgsljk',
                text2: 'goasppasojwa',
              ),
            ],
          )),
    );
  }
}

class Block extends StatelessWidget {
  const Block({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text1,
          style: Theme.of(context).textTheme.caption,
        ),
        Text(
          text2,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
