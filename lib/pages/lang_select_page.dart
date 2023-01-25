import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/pages/select_page.dart';
import 'package:vaidyo_app/theme_data.dart';
import 'package:vaidyo_app/widgets/set_lang_button.dart';

class LangSelectPage extends StatefulWidget {
  const LangSelectPage({super.key});

  @override
  State<LangSelectPage> createState() => _LangSelectPageState();
}

class _LangSelectPageState extends State<LangSelectPage> {
  void setLangToEnglish() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: ((context) => const SelectPage()),
      ),
    );
  }

  void setLangToHindi() {}
  void setLangToMarathi() {}
  void setLangToTelugu() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(40),
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Text(
                  "Welcome to Vaidyo",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff389680),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Choose your language",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Flexible(
                  flex: 3,
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 117,
                    crossAxisSpacing: 100,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      GestureDetector(
                        onTap: setLangToEnglish,
                        child: SetLangButton(
                          text: "English",
                          fun: setLangToEnglish,
                        ),
                      ),
                      SetLangButton(
                        text: "Hindi",
                        fun: setLangToHindi,
                      ),
                      SetLangButton(
                        text: "Marathi",
                        fun: setLangToMarathi,
                      ),
                      SetLangButton(
                        text: "Telugu",
                        fun: setLangToTelugu,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
