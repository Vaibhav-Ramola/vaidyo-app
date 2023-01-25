import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaidyo_app/pages/edit_vitals_page.dart';
import 'package:vaidyo_app/theme_data.dart';
import 'package:vaidyo_app/widgets/blood_grp_selector.dart';
import 'package:vaidyo_app/widgets/custom_vaidyo_button.dart';
import 'package:vaidyo_app/widgets/details_container.dart';
import 'package:vaidyo_app/widgets/gender_selector.dart';
import 'package:vaidyo_app/widgets/vitals_container.dart';

class EnterDetailsPage extends StatefulWidget {
  const EnterDetailsPage({super.key});

  @override
  State<EnterDetailsPage> createState() => _EnterDetailsPageState();
}

class _EnterDetailsPageState extends State<EnterDetailsPage> {
  void nextButtonFunction() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => const EditVitalsPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Enter Patient Details",
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
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
          const SliverToBoxAdapter(
            child: DetailsContainer(
              label: "Name",
              showDatePicker: false,
            ),
          ),
          const SliverToBoxAdapter(
            child: DetailsContainer(
              label: "Date of Birth",
              showDatePicker: true,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child: GenderSelector(),
          ),
          const SliverToBoxAdapter(
            child: BloodGrpSelector(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VitalsContainer(text: 'Height'),
                VitalsContainer(text: 'Weight'),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(
                vertical: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomVaidyoButton(
                    buttonLabel: 'Reset',
                    fun: null,
                  ),
                  CustomVaidyoButton(
                    buttonLabel: 'Next',
                    fun: nextButtonFunction,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
