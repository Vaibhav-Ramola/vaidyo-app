import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/pages/patients_details_page.dart';
import 'package:vaidyo_app/pages/select_page.dart';
import 'package:vaidyo_app/theme_data.dart';
import 'dart:math' as math;

class DistrictPage extends StatefulWidget {
  const DistrictPage({super.key});

  @override
  State<DistrictPage> createState() => _DistrictPageState();
}

class _DistrictPageState extends State<DistrictPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 40,
                  color: Color(0xff707070),
                ),
                Text(
                  "Clinic Location",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff3C9785),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const SelectPage()),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.home_sharp,
                      size: 40,
                      color: Color(0xff707070),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                top: 24,
                right: 24,
                left: 24,
              ),
              decoration: const BoxDecoration(
                color: Color(0xffDBE9D8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) => GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const PatientDetailsPage()),
                          ),
                        );
                      }),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 16,
                              bottom: 16,
                              // left: 16,
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                maxRadius: 40,
                                minRadius: 20,
                                backgroundColor: Color(
                                        (math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt())
                                    .withOpacity(1.0),
                              ),
                              title: Text(
                                "Name",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff1C1B1F)),
                              ),
                              subtitle: Text(
                                "Gender, age",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(
                                    0xff1C1B1F,
                                  ),
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: (() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) =>
                                          const PatientDetailsPage()),
                                    ),
                                  );
                                }),
                                icon: const Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 24,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
