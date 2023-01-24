import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomVaidyoButton extends StatefulWidget {
  String buttonLabel;
  CustomVaidyoButton({
    required this.buttonLabel,
    super.key,
  });

  @override
  State<CustomVaidyoButton> createState() => _CustomVaidyoButtonState();
}

class _CustomVaidyoButtonState extends State<CustomVaidyoButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 16,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          const Color(0xff3C9785),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      child: Text(
        widget.buttonLabel,
        style: GoogleFonts.poppins(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
