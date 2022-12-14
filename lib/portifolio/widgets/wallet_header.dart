import 'package:flutter/material.dart';

import '../../l10n/app.dart';
import 'coin_title.dart';
import 'wallet_balance.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        right: size.height * .01,
        top: size.height * .02,
        bottom: size.height * .05,
        left: size.width * .06,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CoinTitle(),
          const WalletBalance(),
          Text(
            CoreString.of(context)!.total,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 117, 118, 128),
            ),
          )
        ],
      ),
    );
  }
}
