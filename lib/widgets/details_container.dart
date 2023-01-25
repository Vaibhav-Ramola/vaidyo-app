import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../theme_data.dart';

class DetailsContainer extends StatefulWidget {
  final String label;
  final bool showDatePicker;
  const DetailsContainer({
    required this.label,
    required this.showDatePicker,
    super.key,
  });

  @override
  State<DetailsContainer> createState() => _DetailsContainerState();
}

class _DetailsContainerState extends State<DetailsContainer> {
  final _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      height: 80,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            // color: Colors.pink,
            width: double.infinity,
            child: Text(
              widget.label,
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
                    controller: _dateController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                if (widget.showDatePicker)
                  IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(DateTime.now().year - 100),
                        lastDate: DateTime(DateTime.now().year + 100),
                      ).then((value) => {
                            if (value != null)
                              {
                                setState(() {
                                  _dateController.text =
                                      DateFormat('yMd').format(value);
                                })
                              }
                          });
                    },
                    icon: const Icon(
                      Icons.calendar_today_outlined,
                      size: 32,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
