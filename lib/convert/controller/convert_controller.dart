import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../portifolio/model/coin_view_data.dart';
import '../../portifolio/model/wallet_view_data.dart';

class ConvertController extends ChangeNotifier {
  late bool isValidConversion;
  late Decimal _coinPercent;
  late Decimal _convertValue;
  late String helperMessage;
  late double currentAssetPrice;
  late double currentAssetPriceToConvert;
  late CoinViewData coinToConvert;
  late CoinViewData currentCoin;

  void refresh(CoinViewData coinToConvert, CoinViewData currentCoin,
      WalletViewData userWallet) {
    this.currentCoin = currentCoin;
    this.coinToConvert = coinToConvert;
    currentAssetPriceToConvert = coinToConvert.marketData!.current_price.usd;
    currentAssetPrice = currentCoin.marketData!.current_price.usd;
    _setCoinPercent(userWallet.percent.toString());

    isValidConversion =
        (currentCoin != coinToConvert) && (_coinPercent >= _convertValue);
    if (currentCoin == coinToConvert) {
      helperMessage = 'Selecione uma moeda diferente para conversão';
    }
  }

  void _validateConversion() {
    if (_convertValue == Decimal.fromInt(0)) {
      isValidConversion = false;
      helperMessage = 'Digite um valor válido';
    } else if (_coinPercent < _convertValue) {
      helperMessage = 'Valor digitado superior ao saldo disponível';
    }
    notifyListeners();
  }

  void setConvertValue(String convertValue) {
    if (convertValue.isNotEmpty) {
      _convertValue = Decimal.parse(convertValue);
    } else {
      _convertValue = Decimal.fromInt(0);
    }
    _validateConversion();
  }

  void _setCoinPercent(String convertValue) {
    _coinPercent = Decimal.parse(convertValue);
  }

  String moneyFormat() {
    return NumberFormat.simpleCurrency(name: 'US\$ ', decimalDigits: 2).format(
        DecimalIntl(Decimal.parse(
            (currentAssetPrice * _convertValue.toDouble()).toString())));
  }

  String formatedConvert() {
    return '$_convertValue ${currentCoin.symbol}';
  }

  String getConvertValue() {
    Decimal dolarValue = Decimal.parse(
        (currentAssetPrice * _convertValue.toDouble()).toString());

    return '${coinToConvert.symbol} ${(dolarValue.toDouble() / currentAssetPriceToConvert).toString()}';
  }

  String getConvertValueReverse() {
    Decimal dolarValue = Decimal.parse(
        (currentAssetPrice * _convertValue.toDouble()).toString());

    return '${(dolarValue.toDouble() / currentAssetPriceToConvert).toString()} ${coinToConvert.symbol}';
  }

  String getConvertValueWithoutSymbol() {
    Decimal dolarValue = Decimal.parse(
        (currentAssetPrice * _convertValue.toDouble()).toString());

    return '${(dolarValue.toDouble() / currentAssetPriceToConvert).toString()}';
  }

  String formatReceive() {
    Decimal dolarValue = Decimal.parse(
        (currentAssetPrice * _convertValue.toDouble()).toString());

    return '${(dolarValue.toDouble() / currentAssetPriceToConvert).toString()} ${coinToConvert.symbol}';
  }

  String formatExchange() {
    return ' 1 ${currentCoin.symbol} = ${((currentAssetPrice / currentAssetPriceToConvert.toDouble()).toString())} ${coinToConvert.symbol}';
  }

  Decimal ReceiveFormat() {
    Decimal dolarValue = Decimal.parse(
        (currentAssetPrice * _convertValue.toDouble()).toString());

    return Decimal.parse(
        (dolarValue.toDouble() / currentAssetPriceToConvert).toString());
  }

  Decimal DecimalMoney() => _convertValue;
}