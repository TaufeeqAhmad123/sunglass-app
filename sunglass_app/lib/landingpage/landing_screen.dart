import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sunglass_app/home/home_screen.dart';
import 'package:sunglass_app/utils/colors.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/landing.jpg',
            height: height,
            width: width,
            fit: BoxFit.cover,
          ).animate().fadeIn(delay: 500.ms,duration: 500.ms),
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Glass \nfor eye',
                  style: TextStyle(
                    fontSize: 75,
                    fontWeight: FontWeight.bold,
                    inherit: false,
                  ),
                ).animate().fadeIn(delay: 400.ms,duration: 500.ms).slideY(begin: 0.1,end: 0,),
                SizedBox(height: 40),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return const HomeScreen();
                        }));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 22,
                        ),
                        decoration: BoxDecoration(
                          color: GlassesColors.lightYellow,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            inherit: false,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ).animate().scale(delay: 500.ms,duration: 500.ms),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ).animate().scale(delay: 500.ms,duration: 500.ms),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
