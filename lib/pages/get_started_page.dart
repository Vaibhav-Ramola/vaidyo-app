import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/pages/login_page.dart';
import 'package:vaidyo_app/theme_data.dart';

class GetStartePage extends StatefulWidget {
  const GetStartePage({super.key});

  @override
  State<GetStartePage> createState() => _GetStartePageState();
}

class _GetStartePageState extends State<GetStartePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          const Spacer(),
          Image.asset('assets/images/splash_screen.jpg'),
          const SizedBox(
            height: 20,
          ),
          SvgPicture.asset('assets/images/Vaidyo image 2.svg'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Healthcare made simple with Telemedicine',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 40,
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(
                  0xff3b9684,
                ),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  // side: const BorderSide(color: Colors.red),
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: Text(
              "Get Started",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
