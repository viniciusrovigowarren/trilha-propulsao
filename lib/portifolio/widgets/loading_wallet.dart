import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../../shared/utils/util.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Padding(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Util.getContainerValueColor(true),
                      ),
                      duration: const Duration(milliseconds: 700),
                      width: size.width * 0.3,
                      height: size.height * .050,
                      child: Visibility(
                        visible: false,
                        child: AutoSizeText(
                          NumberFormat.simpleCurrency(
                            name: 'US\$ ',
                            decimalDigits: 2,
                          ).format(22),
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Montserrat",
                            fontSize: size.height * .045,
                          ),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Util.getContainerValueColor(true),
                      ),
                      duration: const Duration(milliseconds: 700),
                      width: size.width * 0.1,
                      height: size.height * .04,
                      child: Visibility(
                        visible: false,
                        child: AutoSizeText(
                          NumberFormat.simpleCurrency(
                            name: 'US\$ ',
                            decimalDigits: 2,
                          ).format(22),
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Montserrat",
                            fontSize: size.height * .045,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                AnimatedContainer(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Util.getContainerValueColor(true),
                  ),
                  duration: const Duration(milliseconds: 700),
                  width: size.width * 0.55,
                  height: size.height * .050,
                  child: Visibility(
                    visible: false,
                    child: AutoSizeText(
                      NumberFormat.simpleCurrency(
                        name: 'US\$ ',
                        decimalDigits: 2,
                      ).format(22),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Montserrat",
                        fontSize: size.height * .045,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.amber,
                    ),
                    width: size.width * 0.4,
                    height: size.height * .02,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Container(
              height: size.height * .12,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Color.fromARGB(255, 227, 228, 235),
                    width: 2,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * .03,
                  vertical: size.height * .02,
                ),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: size.width * .12,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.amber,
                                ),
                                height: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                ),
                                height: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * .009,
                          left: size.width * .04,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
