import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/theme_data.dart';
import 'package:vaidyo_app/widgets/calender.dart';

class EditVitalsPage extends StatefulWidget {
  const EditVitalsPage({super.key});

  @override
  State<EditVitalsPage> createState() => _EditVitalsPageState();
}

class _EditVitalsPageState extends State<EditVitalsPage> {
  String _dropDownValue = DateTime.now().year.toString();
  List<DropdownMenuItem<String>> _dropDownList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    int currYr = DateTime.now().year;
    for (int i = currYr - 50; i < currYr + 50; i++) {
      _dropDownList.add(
        DropdownMenuItem<String>(
          value: i.toString(),
          child: Text(
            i.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
            size: 32,
          ),
          onPressed: (() {}),
        ),
        title: Text(
          "Enter Patient Vitals",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: const Color(0xff3C9785),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_sharp,
              size: 32,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            // color: Colors.amber,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: 70,
                    child: DropdownButton(
                      underline: Container(),
                      menuMaxHeight: 75,
                      items: _dropDownList,
                      value: _dropDownValue,
                      onChanged: ((value) {
                        if (value is String) {
                          setState(() {
                            _dropDownValue = value;
                          });
                        }
                      }),
                    ),
                  ),
                  Calender(year: _dropDownValue),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: Column(
                        children: [
                          Text(
                            "Temperature",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff3D3D47)
                            ),
                          ),
                          const SizedBox(height: 12,),
                          Container(
                            
                          )
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
