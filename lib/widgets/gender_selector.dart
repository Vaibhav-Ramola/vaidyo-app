import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/theme_data.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String _selectedGender = 'Male';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      height: 116,
      // color: Colors.amber,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Gender",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3D3D47),
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                _selectedGender,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff95989A),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  _selectedGender = 'Male';
                }),
                child: Container(
                  margin: const EdgeInsets.all(16),
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    color: (_selectedGender == 'Male')
                        ? const Color(0xffDBE9D8)
                        : backgroundColor,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.black26,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/images/male.svg"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  setState(() {
                    _selectedGender = 'Female';
                  });
                }),
                child: Container(
                  margin: const EdgeInsets.all(16),
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    color: (_selectedGender == 'Female')
                        ? const Color(0xffDBE9D8)
                        : backgroundColor,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.black26,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/images/female.svg"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedGender = 'Others';
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(16),
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    color: (_selectedGender == 'Others')
                        ? const Color(0xffDBE9D8)
                        : backgroundColor,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.black26,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/images/other.svg"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
