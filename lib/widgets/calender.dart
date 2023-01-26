import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/widgets/day_container.dart';

// ignore: must_be_immutable
class Calender extends StatefulWidget {
  String year = DateTime.now().year.toString();
  Calender({
    required this.year,
    super.key,
  });
  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  late List<String> _months;
  late int _currMonth;
  late int _currDate;
  late int _currDay;

  @override
  void initState() {
    super.initState();
    _months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sept',
      'Oct',
      'Nov',
      'Dec'
    ];
    _currMonth = DateTime.now().month;
    _currDate = DateTime.now().day;
    _currDay = DateTime.now().weekday;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 72,
          child: ListView.builder(
            itemCount: 12,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currMonth = index + 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    _months[index],
                    style: GoogleFonts.poppins(
                      fontSize: (_currMonth == index + 1) ? 24 : 19,
                      fontWeight: FontWeight.w500,
                      color: (_currMonth == index + 1)
                          ? const Color(0xff3C9785)
                          : const Color(0xff828282),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DateUtils.getDaysInMonth(
              int.parse(widget.year),
              _currMonth,
            ),
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currDay = DateTime(
                      int.parse(widget.year),
                      _currMonth,
                      index + 1,
                    ).weekday;
                    _currDate = index + 1;
                  });
                },
                child: DayContainer(
                  day: DateTime(
                    int.parse(widget.year),
                    _currMonth,
                    index + 1,
                  ).weekday.toString(),
                  date: (index + 1).toString(),
                  currentDate: _currDate.toString(),
                  currentDay: _currDay.toString(),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
