import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentList extends StatefulWidget {
  const AppointmentList({super.key});

  @override
  State<AppointmentList> createState() => _AppointmentListState();
}

class _AppointmentListState extends State<AppointmentList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      reverse: true,
      itemBuilder: ((context, index) {
        return ListTile(
          onTap: () {},
          leading: SvgPicture.asset('assets/images/folder.svg'),
          title: Text(
            "Appointment ${index + 1}",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            DateTime.now().toString(),
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xff828182)),
          ),
        );
      }),
    );
  }
}
