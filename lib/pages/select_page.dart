import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/pages/district_page.dart';
import 'package:vaidyo_app/pages/enter_details_page.dart';
import 'package:vaidyo_app/theme_data.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  Widget button(String label) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 8,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 16,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            const Color(0xff3B9684),
          ),
        ),
        onPressed: () {
          StatefulWidget nextScreen;
          if (label == 'Add New Patient') {
            nextScreen = const EnterDetailsPage();
          } else if (label == 'Edit Existing Patient') {
            nextScreen = const EnterDetailsPage();
          } else {
            nextScreen = const DistrictPage();
          }
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: ((context) => nextScreen),
            ),
          );
        },
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Hello, Mr. Srinivas",
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff3B9684),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      child: Text(
                        'Select to continue',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff3D3D47),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color(0xffDBE9D8),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    button("Add New Patient"),
                    button("Edit Existing Patient"),
                    button("Patient Records"),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
