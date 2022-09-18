// import 'package:decimal/decimal.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../details/widgets/graphic.dart';
// import '../../shared/utils/assets.dart';
// import '../model/coin_model.dart';

// final assetsListProvider = StateProvider((ref) {
//   return [
//     CoinModel(
//       nameCoin: 'Bitcoin',
//       ticker: 'BTC',
//       iconCoin: imgBitcoin,
//       variation: 602.26,
//       currentPrice: Decimal.parse('114471.34'),
//       coinBalance: Decimal.parse('0.51'),
//       dayPrices: [
//         pD('1'),
//         pD('2'),
//         pD('3'),
//         pD('4'),
//         pD('5'),
//         pD('6'),
//         pD('7'),
//         pD('8'),
//         pD('9'),
//         pD('10'),
//         pD('11'),
//         pD('12'),
//         pD('13'),
//         pD('14'),
//         pD('15'),
//         pD('16'),
//         pD('17'),
//         pD('18'),
//         pD('19'),
//         pD('20'),
//         pD('21'),
//         pD('22'),
//         pD('23'),
//         pD('24'),
//         pD('25'),
//         pD('26'),
//         pD('27'),
//         pD('28'),
//         pD('29'),
//         pD('30'),
//         pD('31'),
//         pD('32'),
//         pD('33'),
//         pD('34'),
//         pD('35'),
//         pD('36'),
//         pD('37'),
//         pD('38'),
//         pD('39'),
//         pD('40'),
//         pD('41'),
//         pD('42'),
//         pD('43'),
//         pD('44'),
//         pD('45'),
//         pD('46'),
//         pD('47'),
//         pD('48'),
//         pD('49'),
//         pD('50'),
//         pD('51'),
//         pD('52'),
//         pD('53'),
//         pD('54'),
//         pD('55'),
//         pD('56'),
//         pD('57'),
//         pD('58'),
//         pD('59'),
//         pD('60'),
//         pD('61'),
//         pD('62'),
//         pD('63'),
//         pD('64'),
//         pD('65'),
//         pD('66'),
//         pD('67'),
//         pD('68'),
//         pD('69'),
//         pD('70'),
//         pD('71'),
//         pD('72'),
//         pD('73'),
//         pD('74'),
//         pD('75'),
//         pD('76'),
//         pD('77'),
//         pD('78'),
//         pD('79'),
//         pD('80'),
//         pD('81'),
//         pD('82'),
//         pD('83'),
//         pD('84'),
//         pD('85'),
//         pD('86'),
//         pD('87'),
//         pD('88'),
//         pD('89'),
//         pD('90'),
//         pD('91'),
//       ],
//       prices: [
//         pD('0.21'),
//         pD('1.63'),
//         pD('2.21'),
//         pD('3.21'),
//         pD('4.00'),
//         pD('5.21'),
//         pD('6.63'),
//         pD('7.21'),
//         pD('8.21'),
//         pD('9.00'),
//         pD('10.21'),
//         pD('11.63'),
//         pD('12.21'),
//         pD('13.21'),
//         pD('14.00'),
//         pD('15.21'),
//         pD('16.63'),
//         pD('17.21'),
//         pD('18.21'),
//         pD('19.00'),
//         pD('20.21'),
//         pD('21.63'),
//         pD('22.21'),
//         pD('23.21'),
//         pD('24.00'),
//         pD('25.21'),
//         pD('26.63'),
//         pD('27.21'),
//         pD('28.21'),
//         pD('29.00'),
//         pD('30.21'),
//         pD('31.63'),
//         pD('32.21'),
//         pD('33.21'),
//         pD('34.00'),
//         pD('35.21'),
//         pD('36.63'),
//         pD('37.21'),
//         pD('38.21'),
//         pD('39.00'),
//         pD('40.21'),
//         pD('41.63'),
//         pD('42.21'),
//         pD('43.21'),
//         pD('44.00'),
//         pD('45.21'),
//         pD('46.63'),
//         pD('47.21'),
//         pD('48.21'),
//         pD('49.00'),
//         pD('50.21'),
//         pD('51.63'),
//         pD('52.21'),
//         pD('53.21'),
//         pD('54.00'),
//         pD('55.21'),
//         pD('56.63'),
//         pD('57.21'),
//         pD('58.21'),
//         pD('59.00'),
//         pD('60.21'),
//         pD('61.63'),
//         pD('62.21'),
//         pD('63.21'),
//         pD('64.00'),
//         pD('65.21'),
//         pD('66.63'),
//         pD('67.21'),
//         pD('68.21'),
//         pD('69.00'),
//         pD('70.21'),
//         pD('80.63'),
//         pD('81.21'),
//         pD('82.21'),
//         pD('83.00'),
//         pD('84.21'),
//         pD('85.63'),
//         pD('86.21'),
//         pD('87.21'),
//         pD('88.00'),
//       ],
//     ),
//     CoinModel(
//       nameCoin: 'Ethereum',
//       ticker: 'ETH',
//       iconCoin: imgEthereum,
//       variation: 9202.25,
//       currentPrice: Decimal.parse('7996'),
//       coinBalance: Decimal.parse('0.51'),
//       dayPrices: [
//         pD('1'),
//         pD('2'),
//         pD('3'),
//         pD('4'),
//         pD('5'),
//         pD('6'),
//         pD('7'),
//         pD('8'),
//         pD('9'),
//         pD('10'),
//         pD('11'),
//         pD('12'),
//         pD('13'),
//         pD('14'),
//         pD('15'),
//         pD('16'),
//         pD('17'),
//         pD('18'),
//         pD('19'),
//         pD('20'),
//         pD('21'),
//         pD('22'),
//         pD('23'),
//         pD('24'),
//         pD('25'),
//         pD('26'),
//         pD('27'),
//         pD('28'),
//         pD('29'),
//         pD('30'),
//         pD('31'),
//         pD('32'),
//         pD('33'),
//         pD('34'),
//         pD('35'),
//         pD('36'),
//         pD('37'),
//         pD('38'),
//         pD('39'),
//         pD('40'),
//         pD('41'),
//         pD('42'),
//         pD('43'),
//         pD('44'),
//         pD('45'),
//         pD('46'),
//         pD('47'),
//         pD('48'),
//         pD('49'),
//         pD('50'),
//         pD('51'),
//         pD('52'),
//         pD('53'),
//         pD('54'),
//         pD('55'),
//         pD('56'),
//         pD('57'),
//         pD('58'),
//         pD('59'),
//         pD('60'),
//         pD('61'),
//         pD('62'),
//         pD('63'),
//         pD('64'),
//         pD('65'),
//         pD('66'),
//         pD('67'),
//         pD('68'),
//         pD('69'),
//         pD('70'),
//         pD('71'),
//         pD('72'),
//         pD('73'),
//         pD('74'),
//         pD('75'),
//         pD('76'),
//         pD('77'),
//         pD('78'),
//         pD('79'),
//         pD('80'),
//         pD('81'),
//         pD('82'),
//         pD('83'),
//         pD('84'),
//         pD('85'),
//         pD('86'),
//         pD('87'),
//         pD('88'),
//         pD('89'),
//         pD('90'),
//       ],
//       prices: [
//         pD('0.21'),
//         pD('1.63'),
//         pD('2.21'),
//         pD('3.21'),
//         pD('4.00'),
//         pD('5.21'),
//         pD('6.63'),
//         pD('7.21'),
//         pD('8.21'),
//         pD('9.00'),
//         pD('10.21'),
//         pD('11.63'),
//         pD('12.21'),
//         pD('13.21'),
//         pD('14.00'),
//         pD('15.21'),
//         pD('16.63'),
//         pD('17.21'),
//         pD('18.21'),
//         pD('19.00'),
//         pD('20.21'),
//         pD('21.63'),
//         pD('22.21'),
//         pD('23.21'),
//         pD('24.00'),
//         pD('25.21'),
//         pD('26.63'),
//         pD('27.21'),
//         pD('28.21'),
//         pD('29.00'),
//         pD('30.21'),
//         pD('31.63'),
//         pD('32.21'),
//         pD('33.21'),
//         pD('34.00'),
//         pD('35.21'),
//         pD('36.63'),
//         pD('37.21'),
//         pD('38.21'),
//         pD('39.00'),
//         pD('40.21'),
//         pD('41.63'),
//         pD('42.21'),
//         pD('43.21'),
//         pD('44.00'),
//         pD('45.21'),
//         pD('46.63'),
//         pD('47.21'),
//         pD('48.21'),
//         pD('49.00'),
//         pD('50.21'),
//         pD('51.63'),
//         pD('52.21'),
//         pD('53.21'),
//         pD('54.00'),
//         pD('55.21'),
//         pD('56.63'),
//         pD('57.21'),
//         pD('58.21'),
//         pD('59.00'),
//         pD('60.21'),
//         pD('61.63'),
//         pD('62.21'),
//         pD('63.21'),
//         pD('64.00'),
//         pD('65.21'),
//         pD('66.63'),
//         pD('67.21'),
//         pD('68.21'),
//         pD('69.00'),
//         pD('70.21'),
//         pD('80.63'),
//         pD('81.21'),
//         pD('82.21'),
//         pD('83.00'),
//         pD('84.21'),
//         pD('85.63'),
//         pD('86.21'),
//         pD('87.21'),
//         pD('88.00'),
//       ],
//     ),
//     CoinModel(
//       nameCoin: 'Litecoin',
//       ticker: 'LTC',
//       iconCoin: imgLitecoin,
//       variation: 0.82,
//       currentPrice: Decimal.parse('245'),
//       coinBalance: Decimal.parse('0.51'),
//       dayPrices: [
//         pD('1'),
//         pD('2'),
//         pD('3'),
//         pD('4'),
//         pD('5'),
//         pD('6'),
//         pD('7'),
//         pD('8'),
//         pD('9'),
//         pD('10'),
//         pD('11'),
//         pD('12'),
//         pD('13'),
//         pD('14'),
//         pD('15'),
//         pD('16'),
//         pD('17'),
//         pD('18'),
//         pD('19'),
//         pD('20'),
//         pD('21'),
//         pD('22'),
//         pD('23'),
//         pD('24'),
//         pD('25'),
//         pD('26'),
//         pD('27'),
//         pD('28'),
//         pD('29'),
//         pD('30'),
//         pD('31'),
//         pD('32'),
//         pD('33'),
//         pD('34'),
//         pD('35'),
//         pD('36'),
//         pD('37'),
//         pD('38'),
//         pD('39'),
//         pD('40'),
//         pD('41'),
//         pD('42'),
//         pD('43'),
//         pD('44'),
//         pD('45'),
//         pD('46'),
//         pD('47'),
//         pD('48'),
//         pD('49'),
//         pD('50'),
//         pD('51'),
//         pD('52'),
//         pD('53'),
//         pD('54'),
//         pD('55'),
//         pD('56'),
//         pD('57'),
//         pD('58'),
//         pD('59'),
//         pD('60'),
//         pD('61'),
//         pD('62'),
//         pD('63'),
//         pD('64'),
//         pD('65'),
//         pD('66'),
//         pD('67'),
//         pD('68'),
//         pD('69'),
//         pD('70'),
//         pD('71'),
//         pD('72'),
//         pD('73'),
//         pD('74'),
//         pD('75'),
//         pD('76'),
//         pD('77'),
//         pD('78'),
//         pD('79'),
//         pD('80'),
//         pD('81'),
//         pD('82'),
//         pD('83'),
//         pD('84'),
//         pD('85'),
//         pD('86'),
//         pD('87'),
//         pD('88'),
//         pD('89'),
//         pD('90'),
//       ],
//       prices: [
//         pD('0.21'),
//         pD('1.63'),
//         pD('2.21'),
//         pD('3.21'),
//         pD('4.00'),
//         pD('5.21'),
//         pD('6.63'),
//         pD('7.21'),
//         pD('8.21'),
//         pD('9.00'),
//         pD('10.21'),
//         pD('11.63'),
//         pD('12.21'),
//         pD('13.21'),
//         pD('14.00'),
//         pD('15.21'),
//         pD('16.63'),
//         pD('17.21'),
//         pD('18.21'),
//         pD('19.00'),
//         pD('20.21'),
//         pD('21.63'),
//         pD('22.21'),
//         pD('23.21'),
//         pD('24.00'),
//         pD('25.21'),
//         pD('26.63'),
//         pD('27.21'),
//         pD('28.21'),
//         pD('29.00'),
//         pD('30.21'),
//         pD('31.63'),
//         pD('32.21'),
//         pD('33.21'),
//         pD('34.00'),
//         pD('35.21'),
//         pD('36.63'),
//         pD('37.21'),
//         pD('38.21'),
//         pD('39.00'),
//         pD('40.21'),
//         pD('41.63'),
//         pD('42.21'),
//         pD('43.21'),
//         pD('44.00'),
//         pD('45.21'),
//         pD('46.63'),
//         pD('47.21'),
//         pD('48.21'),
//         pD('49.00'),
//         pD('50.21'),
//         pD('51.63'),
//         pD('52.21'),
//         pD('53.21'),
//         pD('54.00'),
//         pD('55.21'),
//         pD('56.63'),
//         pD('57.21'),
//         pD('58.21'),
//         pD('59.00'),
//         pD('60.21'),
//         pD('61.63'),
//         pD('62.21'),
//         pD('63.21'),
//         pD('64.00'),
//         pD('65.21'),
//         pD('66.63'),
//         pD('67.21'),
//         pD('68.21'),
//         pD('69.00'),
//         pD('70.21'),
//         pD('80.63'),
//         pD('81.21'),
//         pD('82.21'),
//         pD('83.00'),
//         pD('84.21'),
//         pD('85.63'),
//         pD('86.21'),
//         pD('87.21'),
//         pD('88.00'),
//       ],
//     ),
//   ];
// });