import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/theme_data.dart';

class BloodGrpSelector extends StatefulWidget {
  const BloodGrpSelector({super.key});

  @override
  State<BloodGrpSelector> createState() => _BloodGrpSelectorState();
}

class _BloodGrpSelectorState extends State<BloodGrpSelector> {
  String _selectedBloodGrp = 'AB+';
  Widget bloodGrpContainer(String bloodGrp) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          _selectedBloodGrp = bloodGrp;
        });
      }),
      child: Container(
        height: 40,
        width: 64,
        decoration: BoxDecoration(
          color: (_selectedBloodGrp == bloodGrp)
              ? const Color(0xffDBE9D8)
              : backgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              color: Colors.black26,
              blurRadius: 4,
            )
          ],
        ),
        child: Center(
          child: Text(
            bloodGrp,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xff3D3D47),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Text(
                  "Blood Group",
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
                  _selectedBloodGrp,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff95989A),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bloodGrpContainer('AB+'),
              bloodGrpContainer('AB-'),
              bloodGrpContainer('A+'),
              bloodGrpContainer('A-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bloodGrpContainer('O+'),
              bloodGrpContainer('O-'),
              bloodGrpContainer('B+'),
              bloodGrpContainer('B-'),
            ],
          )
        ],
      ),
    );
  }
}
