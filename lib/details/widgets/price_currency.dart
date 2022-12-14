import 'package:auto_size_text/auto_size_text.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

class PriceCurrency extends StatelessWidget {
  final Decimal priceCUrrency;

  const PriceCurrency({
    Key? key,
    required this.priceCUrrency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: const Color.fromARGB(255, 227, 228, 235),
            width: sizeHeight * 0.002,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Preço atual',
              style: TextStyle(
                fontSize: 19,
                color: Color.fromARGB(255, 117, 118, 128),
              ),
            ),
            SizedBox(
              width: sizeWidth * 0.35,
              child: AutoSizeText(
                textAlign: TextAlign.end,
                'R\$ $priceCUrrency',
                style: const TextStyle(
                  fontSize: 19,
                  color: Color.fromARGB(255, 47, 47, 51),
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
