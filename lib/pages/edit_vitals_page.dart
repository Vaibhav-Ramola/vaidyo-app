import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/pages/district_page.dart';
import 'package:vaidyo_app/theme_data.dart';
import 'package:vaidyo_app/widgets/calender.dart';
import 'package:vaidyo_app/widgets/custom_vaidyo_button.dart';
import 'package:vaidyo_app/widgets/vitals_container.dart';

class EditVitalsPage extends StatefulWidget {
  const EditVitalsPage({super.key});

  @override
  State<EditVitalsPage> createState() => _EditVitalsPageState();
}

class _EditVitalsPageState extends State<EditVitalsPage> {
  String _dropDownValue = DateTime.now().year.toString();
  final List<DropdownMenuItem<String>> _dropDownList = [];
  final _formKey = GlobalKey<FormState>();

  void doneButtonFunction() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: ((context) => const DistrictPage()),
      ),
    );
  }

  @override
  void initState() {
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
      resizeToAvoidBottomInset: false,
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
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 12,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
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
              ),
              SliverToBoxAdapter(child: Calender(year: _dropDownValue)),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VitalsContainer(
                      text: "Temperature",
                    ),
                    VitalsContainer(
                      text: "Pulse",
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VitalsContainer(
                      text: "Respiration",
                    ),
                    VitalsContainer(
                      text: "Blood Pressure",
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 42,
                  ),
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        // color: Colors.pink,
                        width: double.infinity,
                        child: Text(
                          "Attachment",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff3D3D47),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                color: Colors.black26,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(8),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.photo,
                                  size: 32,
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              /*********    Add Buttons here     **********/
              // const Spacer(),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomVaidyoButton(
                        buttonLabel: 'Reset',
                        fun: null,
                      ),
                      CustomVaidyoButton(
                        buttonLabel: 'Done',
                        fun: doneButtonFunction,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
