import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/pages/select_page.dart';
import 'package:vaidyo_app/theme_data.dart';
import 'package:vaidyo_app/widgets/appointment_list.dart';
import 'package:vaidyo_app/widgets/basic_details_container.dart';

class PatientDetailsPage extends StatefulWidget {
  const PatientDetailsPage({super.key});

  @override
  State<PatientDetailsPage> createState() => _PatientDetailsPageState();
}

class _PatientDetailsPageState extends State<PatientDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 32,
          ),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        title: Text(
          "Patient Details",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: const Color(0xff3C9785),
          ),
        ),
        actions: [
          IconButton(
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
              color: Colors.black,
              size: 32,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Flexible(
              flex: 3,
              child: BasicDetailsContainer(),
            ),
            Flexible(
              flex: 4,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 16,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffDBE9D8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(18),
                      width: double.infinity,
                      child: Text(
                        "History",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff3D3D47),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Expanded(
                      child: AppointmentList(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: const Color(0xff3B9684),
        child: const Icon(
          Icons.add,
          color: backgroundColor,
          size: 32,
        ),
      ),
    );
  }
}
