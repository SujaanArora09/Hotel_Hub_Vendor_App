import 'package:flutter/material.dart';

import '../utils/constants.dart';

class GeneralAppBar extends StatelessWidget {
  final String? title;
  final bool? islead;
  final String? text;
  final bool? bottom;
  final bool? isNav;

  const GeneralAppBar(
      {super.key, this.text, this.title, this.islead, this.bottom, this.isNav});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: transparent,
      foregroundColor: black,
      // automaticallyImplyLeading: islead ?? true,
      elevation: 0,
      title: Text(
        title ?? '',
        style: bodyText18w500(color: black),
      ),
    );
  }

}