import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sunglass_app/utils/colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 187, 187, 187),
            Color.fromARGB(255, 235, 235, 235),
            Color.fromRGBO(240, 241, 238, 1),
          ],
          stops: [0, .15, 1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 332,
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            cupertino.CupertinoIcons.arrow_left,
                            color: Colors.black,
                          ),
                        )
                        .animate()
                        .fadeIn(duration: 500.ms)
                        .slideX(begin: -0.1, end: 0),
                    Text(
                          'Sun Glasses',
                          style: TextStyle(
                            fontSize: 20,
                            inherit: false,
                            color: Colors.black.withOpacity(.75),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                        .animate()
                        .fadeIn(duration: 500.ms)
                        .slideX(begin: -0.1, end: 0),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(cupertino.CupertinoIcons.heart)
                          .animate()
                          .fadeIn(duration: 500.ms)
                          .slideX(begin: 0.1, end: 0),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                CustomPaint(
                  painter: DashedLinePainter(),
                  child: Container(height: 1, width: 350),
                ).animate().fadeIn(duration: 500.ms),
                const SizedBox(height: 8),

                const Text(
                  '360',
                  style: TextStyle(
                    inherit: false,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ).animate().fadeIn(duration: 500.ms),
                Image.asset(
                  'assets/glasses${selectedIndex + 1}.png',
                  height: 110,
                  width: 300,
                  fit: BoxFit.fitWidth,
                ).animate().fadeIn(duration: 500.ms).scale(delay: 500.ms),
                const SizedBox(height: 20),
                CustomPaint(
                  painter: DashedLinePainter(showDot: false),
                  child: Container(
                    alignment: Alignment.center,
                    height: 1,
                    width: 350,
                  ),
                ).animate().fadeIn(duration: 500.ms),
                const SizedBox(height: 30),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 40),
              decoration: const BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 35),
                    Text(
                          'Cat-Eye, Pearl',
                          style: TextStyle(
                            fontSize: 35,
                            inherit: false,
                            color: Colors.black.withOpacity(.75),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                        .animate()
                        .fadeIn(duration: 500.ms)
                        .slideX(begin: -0.1, end: 0),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () {
                                selectedIndex = index;
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 170,
                                    width: 140,
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Image.asset(
                                            'assets/glasses${index + 1}.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        if (selectedIndex == index)
                                          Positioned(
                                            left: 10,
                                            bottom: 10,
                                            child: Icon(
                                              cupertino
                                                  .CupertinoIcons
                                                  .check_mark_circled_solid,
                                              color: Colors.black,
                                              size: 25,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Color ${index + 1}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      inherit: false,
                                      color: Colors.black.withOpacity(.65),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ).animate().fadeIn(duration: 500.ms),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                                'Product Details',
                                style: TextStyle(
                                  fontSize: 23,
                                  inherit: false,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              )
                              .animate()
                              .fadeIn(duration: 500.ms, delay: 400.ms)
                              .slideX(begin: -0.1, end: 0, delay: 400.ms),
                          const Icon(Icons.add, color: Colors.black, size: 25)
                              .animate()
                              .fadeIn(duration: 500.ms, delay: 400.ms)
                              .slideX(begin: 0.1, end: 0, delay: 400.ms),
                        ],
                      ),
                    ),
                    const SizedBox(height: 13),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                                'Care',
                                style: TextStyle(
                                  fontSize: 23,
                                  inherit: false,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              )
                              .animate()
                              .fadeIn(duration: 500.ms, delay: 400.ms)
                              .slideX(begin: -0.1, end: 0, delay: 400.ms),
                          const Icon(Icons.add, color: Colors.black, size: 25)
                              .animate()
                              .fadeIn(duration: 500.ms, delay: 400.ms)
                              .slideX(begin: 0.1, end: 0, delay: 400.ms),
                        ],
                      ),
                    ),
                    const SizedBox(height: 13),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                                'Reviews',
                                style: TextStyle(
                                  fontSize: 23,
                                  inherit: false,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              )
                              .animate()
                              .fadeIn(duration: 500.ms, delay: 400.ms)
                              .slideX(begin: -0.1, end: 0, delay: 400.ms),
                          const Icon(Icons.add, color: Colors.black, size: 25)
                              .animate()
                              .fadeIn(duration: 500.ms, delay: 400.ms)
                              .slideX(begin: 0.1, end: 0, delay: 400.ms),
                        ],
                      ),
                    ),
                     const SizedBox(height: 33),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.black,
                        ),
                        child: const Text(
                          '\$ 135',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            inherit: false,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ).animate().fadeIn(duration: 500.ms).scale(delay: 500.ms),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: GlassesColors.lightYellow,
                        ),
                        child: const Text(
                          'Add to cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            inherit: false,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ).animate().fadeIn(duration: 500.ms).scale(delay: 500.ms),
                    ),
                  ],
                ),
              ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final bool showDot;
  DashedLinePainter({this.showDot = true});
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 5;
    double dashSpace = 4;
    double startX = 0;
    final paint = Paint()..strokeWidth = 3;
    while (startX < (size.width / 2)) {
      paint.color = Colors.grey.withOpacity((startX / (size.width)));
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
    while (startX < size.width) {
      paint.color = Colors.grey.withOpacity(1 - (startX / (size.width)));
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
    if (showDot) {
      canvas.drawCircle(
        Offset(size.width / 2, 0),
        5,
        paint..color = Colors.black87,
      );
    }
  }

  @override
  bool shouldRepaint(covariant cupertino.CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
