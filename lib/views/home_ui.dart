import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/views/about_ui.dart';
import 'package:karthi_kayan_portfolio/views/appbar_ui.dart';
import 'package:karthi_kayan_portfolio/views/contact_ui.dart';
import 'package:karthi_kayan_portfolio/views/hero_section_ui.dart';
import 'package:karthi_kayan_portfolio/views/projects_ui.dart';
import 'package:karthi_kayan_portfolio/views/skills_services_ui.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeUi extends StatelessWidget {
  HomeUi({super.key});

  List pagesList = [
    HeroSectionUi(),
    AboutUi(),
    SkillsServicesUi(),
    ProjectsUi(),
    ContactUi(),
    SizedBox(
      width: double.maxFinite,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const AppbarUi(),
              Expanded(
                child: ScrollablePositionedList.builder(
                    scrollDirection: Axis.vertical,
                    itemScrollController: ScrollToPage.scrollController,
                    itemPositionsListener: ScrollToPage.itemPositionsListener,
                    itemCount: pagesList.length,
                    itemBuilder: (context, index) {
                      return pagesList[index];
                    }),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:
          ColoredBox(
            color: MyColors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextWidget.body("The site is currently undergoing maintenance and will be completed on January 1, 2025.", context, color: MyColors.white,),
                )
              ],
            ),
          ),)
        ],
      ),
      // floatingActionButton: Padding(
      //   padding: EdgeInsets.only(right: Responsive.isDesktop(context) ? 14 : 0),
      //   child: FloatingActionButton(
      //     onPressed: (){},
      //     child: Icon(Icons.arrow_upward_sharp, size: 30, color: Colors.cyan),
      //   ),
      // ),
    );
  }
}

class ScrollToPage {

  static final ItemScrollController scrollController = ItemScrollController();
  static final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  static void changePage(int index) {
    scrollController.scrollTo(
      index: index,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
