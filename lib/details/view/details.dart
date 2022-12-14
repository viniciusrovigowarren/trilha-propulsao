import 'package:flutter/material.dart';

import '../../l10n/app.dart';
import '../../portifolio/model/wallet_view_data.dart';
import '../widgets/details_body.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = '/details-page';

  const DetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(CoreString.of(context)!.details),
      ),
      body: DatailsBody(
        model: ModalRoute.of(context)!.settings.arguments as WalletViewData,
      ),
    );
  }
}
