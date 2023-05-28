import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../widgets/widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome_page_1.png",
    "welcome_page_2.png",
    "welcome_page_3.png",
  ];
  List largeText = [
    "Универсальность",
    "Скорость",
    "Качество",
  ];
  List secondText = [
    "Любые работы",
    "В кратчайшие сроки",
    "Лучшие в деле",
  ];
  List thirdText = [
    "Что бы ни случилось, мы всегда поможем вам. В удобное для вас время!",
    "Большой штат мастеров не позволит вашему автомобилю простаивать в автомастерской!",
    "Гарантия качества. Качество - приоритет. Качество - единственная цель. Мы стремимся к лучшему!",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/" + images[index]),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: largeText[index],
                        ),
                        AppText(
                          text: secondText[index],
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text: thirdText[index],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 200,
                              child: Row(children: [
                                ResponsiveButton(
                                  width: 120,
                                )
                              ])),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
