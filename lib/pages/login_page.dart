import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:vaidyo_app/theme_data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late var width;
  late var height;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, 50),
              child: Center(
                child: SvgPicture.asset('assets/images/Vaidyo image 1.svg'),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                // height: height * 0.7,
                // width: width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Color(0xffDBE9D8)),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Welcome",
                      style: GoogleFonts.readexPro(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff3B9684),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Login to continue",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff3D3D47),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Form(
                      key: _formKey,
                      child: Expanded(
                        child: ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 35,
                                vertical: 10,
                              ),
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    // borderSide:
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    // borderSide:
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 10,
                                  ),
                                  focusColor: Colors.white,
                                  labelText: 'Enter Medical ID',
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff828182),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 35,
                                // vertical: 10,
                              ),
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide:
                                        const BorderSide(color: Colors.white),

                                    // borderSide:
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide:
                                        const BorderSide(color: Colors.white),

                                    // borderSide:
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 10,
                                  ),
                                  focusColor: Colors.white,
                                  labelText: 'Enter password',
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff828182),
                                  ),
                                ),
                                obscureText: true,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: (() {}),
                                child: Text(
                                  'Forgot password?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff3D3D47),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                            // const SizedBox(
                            //   height: 200,
                            // ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(110.0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff3B9684),
                                  ),
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                      vertical: 16,
                                      horizontal: 40,
                                    ),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      // side: const BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),
                                onPressed: (() {}),
                                child: Text(
                                  "Log In",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            // const SizedBox(
                            //   height: 10,
                            // ),
                          ],
                        ),
                      ),
                    )
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
