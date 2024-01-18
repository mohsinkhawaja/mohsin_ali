import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        // print('Entered');
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
        // print('Exit');
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.oswald(
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(0, -8),
                  ),
                ],
                fontSize: 30.0,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2.0,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.oswald(
                fontSize: 25,
                color: Colors.black,
              ),
        child: Text(
          widget.title,
        ),
      ),
    );
    // );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;

  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxLines;
  const TextForm(
      {super.key,
      @required this.heading,
      @required this.width,
      @required this.hintText,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16.0),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            maxLines: maxLines == null ? null : maxLines,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 2),
                borderRadius: BorderRadius.circular(15.0),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
