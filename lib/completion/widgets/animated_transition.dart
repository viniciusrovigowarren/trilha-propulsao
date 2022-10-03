import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trilha_propulsao/completion/view/completion_page.dart';
import 'package:trilha_propulsao/convert/view/conversion_page.dart';
import 'package:trilha_propulsao/shared/utils/assets.dart';

import '../../portifolio/model/coin_view_data.dart';

class AnimatedTransition extends StatefulWidget {
  static const routeName = '/custon-page';

  const AnimatedTransition({super.key});

  @override
  AnimatedTransitionState createState() => AnimatedTransitionState();
}

class AnimatedTransitionState extends State<AnimatedTransition>
    with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Navigator.push(
              context,
              AnimatingRoute(
                page: const ConversionPage(),
                route: const CompletionPage(),
              ),
            );
            Timer(
              const Duration(milliseconds: 300),
              () {
                scaleController.reset();
              },
            );
          }
        },
      );

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 10.0).animate(scaleController);
  }

  @override
  void dispose() {
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: InkWell(
        onTap: () {
          scaleController.forward();
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: colorMagenta,
              width: 10,
              height: 10,
              child: AnimatedBuilder(
                animation: scaleAnimation,
                builder: (c, child) => Transform.scale(
                  scale: scaleAnimation.value * 4,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorMagenta,
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Concluir conversão',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatingRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  AnimatingRoute({required this.page, required this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}
