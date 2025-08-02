import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  whiteiconcontainor(FontAwesomeIcons.chessRook),
                  greeniconcontainor(FontAwesomeIcons.chessKnight),
                  whiteiconcontainor(FontAwesomeIcons.chessBishop),
                  greeniconcontainor(FontAwesomeIcons.chessQueen),
                  whiteiconcontainor(FontAwesomeIcons.chessKing),
                  greeniconcontainor(FontAwesomeIcons.chessBishop),
                  whiteiconcontainor(FontAwesomeIcons.chessKnight),
                  greeniconcontainor(FontAwesomeIcons.chessRook),
                ],
              ),
              Row(
                children: [
                  greeniconcontainor(FontAwesomeIcons.chessPawn),
                  whiteiconcontainor(FontAwesomeIcons.chessPawn),
                  greeniconcontainor(FontAwesomeIcons.chessPawn),
                  whiteiconcontainor(FontAwesomeIcons.chessPawn),
                  greeniconcontainor(FontAwesomeIcons.chessPawn),
                  whiteiconcontainor(FontAwesomeIcons.chessPawn),
                  greeniconcontainor(FontAwesomeIcons.chessPawn),
                  whiteiconcontainor(FontAwesomeIcons.chessPawn),
                ],
              ),
              Row(
                children: [
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                ],
              ),
              Row(
                children: [
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                ],
              ),
              Row(
                children: [
                 whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                ],
              ),
              Row(
                children: [
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                  greencontainor(),
                  whitecontainor(),
                ],
              ),
              Row(
                children: [
                  whiteiconcontainor(FontAwesomeIcons.chessPawn),
                  greeniconcontainor(FontAwesomeIcons.chessPawn),
                  whiteiconcontainor(FontAwesomeIcons.chessPawn),
                  greeniconcontainor(FontAwesomeIcons.chessPawn),
                  whiteiconcontainor(FontAwesomeIcons.chessPawn),
                  greeniconcontainor(FontAwesomeIcons.chessPawn),
                  whiteiconcontainor(FontAwesomeIcons.chessPawn),
                  greeniconcontainor(FontAwesomeIcons.chessPawn),
                ],
              ),
              Row(
                children: [
                  greeniconcontainor(FontAwesomeIcons.chessRook),
                  whiteiconcontainor(FontAwesomeIcons.chessKnight),
                  greeniconcontainor(FontAwesomeIcons.chessBishop),
                  whiteiconcontainor(FontAwesomeIcons.chessQueen),
                  greeniconcontainor(FontAwesomeIcons.chessKing),
                  whiteiconcontainor(FontAwesomeIcons.chessBishop),
                  greeniconcontainor(FontAwesomeIcons.chessKnight),
                  whiteiconcontainor(FontAwesomeIcons.chessRook),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }

  greencontainor() {
    return Expanded(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all()
        ),
      ),
    );
  }

  whitecontainor() {
    return Expanded(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all()
        ),
      ),
    );
  }
  whiteiconcontainor(icon) {
    return Expanded(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
        ),
        child: Icon(
          icon,
          size: 30,
          color: Colors.black, // Black pieces visible on white squares
        ),
      ),
    );
  }
  greeniconcontainor(icon) {
    return Expanded(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(),
        ),
        child: Icon(
          icon,
          size: 30,
          color: Colors.white, // White pieces visible on green squares
        ),
      ),
    );
  }
}
