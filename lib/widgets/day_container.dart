import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/theme_data.dart';

class DayContainer extends StatefulWidget {
  String day;
  String date;
  DayContainer({
    required this.day,
    required this.date,
    super.key,
  });

  @override
  State<DayContainer> createState() => _DayContainerState();
}

class _DayContainerState extends State<DayContainer> {
  Map<int, String> mapToDay = {
    1: 'Mon',
    2: 'Tue',
    3: 'Wed',
    4: 'Thu',
    5: 'Fri',
    6: 'Sat',
    7: 'Sun',
  };
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
      height: 65,
      width: 65,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          Text(
            mapToDay[int.parse(widget.day)]!,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: const Color(0xff585658),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              widget.date,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff585658),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
