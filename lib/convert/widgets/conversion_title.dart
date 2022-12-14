import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/app.dart';

class ConversionTitle extends StatelessWidget {
  const ConversionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      CoreString.of(context)!.how,
      style: const TextStyle(
        color: Color.fromARGB(255, 47, 47, 51),
        fontWeight: FontWeight.w700,
        fontSize: 26,
      ),
    );
  }
}
