import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sunglass_app/product_details/product_detail.dart';
import 'package:sunglass_app/utils/colors.dart';
import 'package:sunglass_app/widget/custom_menu_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: ScreenHeight * 0.05),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomMenuIcon(width: 30, height: 20),
              Icon(Icons.shopping_bag_outlined, size: 30, color: Colors.white),
            ],
          ),
        ).animate().fadeIn(duration: 500.ms).slideX(begin: -0.1, end: 0),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 450,
                  child: Stack(
                    children: [
                      Positioned(
                            right: 0,
                            top: 0,
                            bottom: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                              child: Image.asset(
                                'assets/home.jpg',
                                height: 400,
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                          .animate()
                          .fadeIn(duration: 500.ms, delay: 500.ms)
                          .slideX(begin: 0.1, end: 0),
                      Positioned(
                        bottom: 0,
                        right: 50,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: GlassesColors.lightYellow,
                          ),

                          child: Icon(
                            Icons.shopping_bag_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ).animate().scale(duration: 500.ms, delay: 500.ms),
                      Positioned(
                        left: 0,

                        bottom: 80,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sun Glasses',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  inherit: false,
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                    'Cat-Eye',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      inherit: false,
                                      fontSize: 52,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                  .animate()
                                  .fadeIn(duration: 500.ms)
                                  .slideX(begin: -0.1, end: 0),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return productTile(
                      index: index,
                      image: 'assets/glasses${index + 1}.png',
                    ).animate().fadeIn( delay: (index*100).ms);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class productTile extends StatelessWidget {
  final int index;
  final String image;
  const productTile({
    super.key, required this.index, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductDetailScreen()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric( vertical: 10),
              height: 180,
              child: Row(
                children: [
                  ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 180,
                          width: 135,
                          color: Colors.white,
                          child: Image.asset(image),
                        ),
                      )
                      .animate()
                      .fadeIn(duration: 500.ms, delay: 500.ms)
                      .slideX(begin: -0.1, end: 0, delay: 500.ms),
                  const SizedBox(width: 20),
                  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cat-eye Sunglasses',
                            style: TextStyle(
                              fontSize: 22,
                              inherit: false,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Brown,',
                            style: TextStyle(
                              fontSize: 18,
                              inherit: false,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            '\$ 99',
                            style: TextStyle(
                              fontSize: 20,
                              inherit: false,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                      .animate()
                      .fadeIn(duration: 500.ms, delay: 500.ms)
                      .slideX(begin: 0.1, end: 0, delay: 500.ms),
                ],
              ),
            ),
    );
  }
}
