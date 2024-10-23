import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';
import 'package:karthi_kayan_portfolio/widgets/divider_widget.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';

class SkillsServicesUi extends StatelessWidget {
  const SkillsServicesUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgImage.jpg'),
            fit: Responsive.isMobile(context)? BoxFit.cover: Responsive.isTablet(context)? BoxFit.fill: BoxFit.fitWidth,
          ),
        ),
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.all(Responsive.isMobile(context)? 15:30),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)), color: MyColors.white,border: Border.all(width: 2,color: MyColors.border)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: MyColors.white,border: Border.all(width: 1,color: MyColors.border)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),
                        Container(
                          height: Responsive.isMobile(context)? 30:60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: Responsive.isMobile(context)? 40: 60,),
                              TextWidget.header1(MyStrings.skillsAndServices, context, color: MyColors.textMenu,),
                              Image.asset(
                                width: Responsive.isMobile(context)?70: 180,
                                height: Responsive.isMobile(context)?30: 50,
                                'assets/Capture.PNG',
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(flex: 1,child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context)?15:30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  const DividerWidget(isTop: true,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        height: Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?25:30,
                                        fit: BoxFit.fitHeight,
                                        'assets/left.jpg',
                                      ),
                                      SizedBox(width: 10,),
                                      TextWidget.semiHeader2(MyStrings.skillsServices, context, color: MyColors.textMenu,),
                                      SizedBox(width: 10,),
                                      Image.asset(
                                        height: Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?25:30,
                                        'assets/right.jpg',
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ],
                                  ),
                                  const DividerWidget(isTop: false,),
                                  SizedBox(height: 15,),
                                  TextWidget.semiHeader3("Flutter", context, color: MyColors.textMenu,),
                                  TextWidget.body("State Management(GetX, Provider, Bloc)\nAPI Integration\nRESTful Services", context, color: MyColors.textMenu,textAlign: TextAlign.center,),
                                  TextWidget.semiHeader3("Dart", context, color: MyColors.textMenu,),
                                  TextWidget.semiHeader3("Figma", context, color: MyColors.textMenu,),
                                  TextWidget.semiHeader3("Java", context, color: MyColors.textMenu,),
                                  TextWidget.semiHeader3("JDBC", context, color: MyColors.textMenu,),
                                  TextWidget.semiHeader3("MySQL", context, color: MyColors.textMenu,),
                                  TextWidget.semiHeader3("Data Structure & Algorithms", context, color: MyColors.textMenu,),
                                  TextWidget.semiHeader3("Problem Solving Techniques", context, color: MyColors.textMenu,),
                                ],
                              ),
                            ),
                            ),
                            Responsive.getWidth(context)> 850?  Flexible(flex: 1,child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context)?15:30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  const DividerWidget(isTop: true,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        height: Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?25:30,
                                        fit: BoxFit.fitHeight,
                                        'assets/left.jpg',
                                      ),
                                      SizedBox(width: 10,),
                                      TextWidget.semiHeader2("Services", context, color: MyColors.textMenu,),
                                      SizedBox(width: 10,),
                                      Image.asset(
                                        height: Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?25:30,
                                        'assets/right.jpg',
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ],
                                  ),
                                  const DividerWidget(isTop: false,),
                                  SizedBox(height: 15,),
                                  TextWidget.semiHeader3("Mobile App Development", context, color: MyColors.textMenu,),
                                  TextWidget.body("I specialize in developing high-quality, user-centric mobile applications for both iOS and Android platforms. My expertise ensures that your app is not only functional and responsive but also delivers an exceptional user experience tailored to your unique requirements.", context, color: MyColors.textMenu,textAlign: TextAlign.center),
                                  TextWidget.semiHeader3("Website Development", context, color: MyColors.textMenu,),
                                  TextWidget.body("I specialize in creating stunning, functional, responsive, and user-friendly websites tailored to meet your unique needs.", context, color: MyColors.textMenu,textAlign: TextAlign.center,),
                                  TextWidget.semiHeader3("Design & User Experience", context, color: MyColors.textMenu,),
                                  TextWidget.body("Proficient in design principles and tools to create engaging and intuitive user experiences.", context, color: MyColors.textMenu,textAlign: TextAlign.center,),
                                ],
                              ),
                            ),
                            ):Container(),
                          ],
                        ),
                        SizedBox(height: Responsive.isMobile(context)? 15:30,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context)?15:30.0),
                          child: Column(
                            children: [
                              const DividerWidget(isTop: true,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    height: Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?25:30,
                                    fit: BoxFit.fitHeight,
                                    'assets/left.jpg',
                                  ),
                                  SizedBox(width: 10,),
                                  TextWidget.semiHeader2("Tools", context, color: MyColors.textMenu,),
                                  SizedBox(width: 10,),
                                  Image.asset(
                                    height: Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?25:30,
                                    'assets/right.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                              const DividerWidget(isTop: false,),
                              SizedBox(height: 15,),
                              TextWidget.semiHeader3("Android Studio", context, color: MyColors.textMenu,),
                              TextWidget.semiHeader3("Visual Studio Code", context, color: MyColors.textMenu,),
                              TextWidget.semiHeader3("GitHub", context, color: MyColors.textMenu,),
                              TextWidget.semiHeader3("MS Office", context, color: MyColors.textMenu,),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        Responsive.getWidth(context)<= 850? Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context)?15:30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  const DividerWidget(isTop: true,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        height: Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?25:30,
                                        fit: BoxFit.fitHeight,
                                        'assets/left.jpg',
                                      ),
                                      SizedBox(width: 10,),
                                      TextWidget.semiHeader2("Services", context, color: MyColors.textMenu,),
                                      SizedBox(width: 10,),
                                      Image.asset(
                                        height: Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?25:30,
                                        'assets/right.jpg',
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ],
                                  ),
                                  const DividerWidget(isTop: false,),
                                  SizedBox(height: 15,),
                                  TextWidget.semiHeader3("Mobile App Development", context, color: MyColors.textMenu,),
                                  TextWidget.body("I specialize in developing high-quality, user-centric mobile applications for both iOS and Android platforms. My expertise ensures that your app is not only functional and responsive but also delivers an exceptional user experience tailored to your unique requirements.", context, color: MyColors.textMenu,textAlign: TextAlign.center),
                                  TextWidget.semiHeader3("Website Development", context, color: MyColors.textMenu,),
                                  TextWidget.body("I specialize in creating stunning, functional, responsive, and user-friendly websites tailored to meet your unique needs.", context, color: MyColors.textMenu,textAlign: TextAlign.center),
                                  TextWidget.semiHeader3("Design & User Experience", context, color: MyColors.textMenu,),
                                  TextWidget.body("Proficient in design principles and tools to create engaging and intuitive user experiences.", context, color: MyColors.textMenu,textAlign: TextAlign.center),
                                  SizedBox(height: 40),

                                ],
                              ),
                            )
                          ],
                        ):Container(),
                      ],
                    ),
                  ),
                ),
                Positioned(child: Padding(
                  padding: const EdgeInsets.only(top: 3.5, left: 4),
                  child: Image.asset("assets/topLeft.jpg", height: Responsive.isMobile(context)?30: 50,width: Responsive.isMobile(context)?30:50,),
                ),top: 0,left: 0,),
                Positioned(child: Padding(
                  padding: const EdgeInsets.only(top: 4.0, right: 3.5),
                  child: Image.asset("assets/topRight.jpg", height: Responsive.isMobile(context)?30:50,width: Responsive.isMobile(context)?30:50,),
                ),top: 0,right: 0,),
                Positioned(child: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, left: 3.5),
                  child: Image.asset("assets/bottomLeft.jpg", height: Responsive.isMobile(context)?30:50,width: Responsive.isMobile(context)?30:50,),
                ),bottom: 0,left: 0,),
                Positioned(child: Padding(
                  padding: const EdgeInsets.only(bottom: 3.5, right: 4,),
                  child: Image.asset("assets/bottomRight.jpg", height: Responsive.isMobile(context)?30:50,width: Responsive.isMobile(context)?30:50,),
                ),bottom: 0,right: 0,),
              ],
            ),
          ),
        )
    );
  }
}
