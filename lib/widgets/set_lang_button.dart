import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetLangButton extends StatefulWidget {
  String text;
  Function fun;
  SetLangButton({
    required this.text,
    required this.fun,
    super.key,
  });

  @override
  State<SetLangButton> createState() => _SetLangButtonState();
}

class _SetLangButtonState extends State<SetLangButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.fun;
      },
      child: Container(
        // margin: EdgeInsets.all(12),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffDBE9D8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
