import 'package:flutter/material.dart';

import '../screen/userdata.dart';

class DetailCard extends StatefulWidget {
  final String lead, text;
  const DetailCard({super.key, required this.lead, required this.text});

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.lead,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black),
        ),
        SizedBox(
          width: mq.width * .02,
        ),
        Text(
          widget.text,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54),
        ),
      ],
    );
  }
}
