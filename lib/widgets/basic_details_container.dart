import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicDetailsContainer extends StatefulWidget {
  const BasicDetailsContainer({super.key});

  @override
  State<BasicDetailsContainer> createState() => _BasicDetailsContainerState();
}

class _BasicDetailsContainerState extends State<BasicDetailsContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: FadeInImage.assetNetwork(
              fit: BoxFit.cover,
              image: "https://www.refinery29.com/images/10215301.jpg",
              placeholder: 'assets/images/placeholder.png',
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Beth Harmon",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color(0xff3D3D47),
          ),
        ),
        Text(
          "62 years",
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xff383A44),
          ),
        ),
        Text(
          "Female",
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xff383A44),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "A+",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff383A44),
                  ),
                ),
                Text(
                  "Blood Group",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff3C9785),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "162 cm",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff383A44),
                  ),
                ),
                Text(
                  "Height",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff3C9785),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "72 kg",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff383A44),
                  ),
                ),
                Text(
                  "Weight",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff3C9785),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
