import 'package:flutter/material.dart';
import 'package:zoom/utils/colors.dart';

class MeetinngOptionn extends StatelessWidget {
  final String text;
  final bool isMute;
  final Function(bool) onChange;

  const MeetinngOptionn(
      {Key? key,
      required this.text,
      required this.isMute,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: secondaryBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Switch.adaptive(value: isMute, onChanged: onChange)
        ],
      ),
    );
  }
}
