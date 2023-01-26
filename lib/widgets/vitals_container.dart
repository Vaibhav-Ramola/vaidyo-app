import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/theme_data.dart';

class VitalsContainer extends StatefulWidget {
  final String text;
  const VitalsContainer({
    required this.text,
    super.key,
  });

  @override
  State<VitalsContainer> createState() => _VitalsContainerState();
}

class _VitalsContainerState extends State<VitalsContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 80,
      width: 150,
      child: Column(
        children: [
          SizedBox(
            // color: Colors.pink,
            width: 150,
            child: Text(
              widget.text,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xff3D3D47),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  color: Colors.black26,
                ),
              ],
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
