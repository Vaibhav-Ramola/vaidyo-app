import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputFiled extends StatefulWidget {
  final String labelText;
  final bool obscr;
  const CustomInputFiled({
    this.obscr = false,
    required this.labelText,
    super.key,
  });

  @override
  State<CustomInputFiled> createState() => _CustomInputFiledState();
}

class _CustomInputFiledState extends State<CustomInputFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.white),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        focusColor: Colors.white,
        labelText: widget.labelText,
        labelStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: const Color(0xff828182),
        ),
      ),
      obscureText: widget.obscr,
    );
  }
}
