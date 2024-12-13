import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/views/about_ui.dart';
import 'package:karthi_kayan_portfolio/views/appbar_ui.dart';
import 'package:karthi_kayan_portfolio/views/contact_ui.dart';
import 'package:karthi_kayan_portfolio/views/hero_section_ui.dart';
import 'package:karthi_kayan_portfolio/views/projects_ui.dart';
import 'package:karthi_kayan_portfolio/views/skills_services_ui.dart';
import 'package:scrollable_list_tab_scroller/scrollable_list_tab_scroller.dart';
// import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeUi extends StatelessWidget {
  HomeUi({super.key});

  List pagesList = [
    HeroSectionUi(),
    AboutUi(),
    SkillsServicesUi(),
    ProjectsUi(),
    ContactUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppbarUi(),
          Expanded(
            child: ScrollableListTabScroller(
            itemCount: pagesList.length,
            headerContainerBuilder: (context, child) => Container(width: 500,height: 100,color: Colors.red,child: child,),
            tabBuilder: (BuildContext context, int index, bool active){
              print("asdf:$index====$active");
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "data.keys $index",
                  style: !active
                      ? null
                      : TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                ),
              );
            },
            itemBuilder: (BuildContext context, int index) => Column(
              children: [
                Text(
                  "pagesList",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                pagesList[index]
              ],
            ),
          ),
            // child: ScrollablePositionedList.builder(
            //     scrollDirection: Axis.vertical,
            //     itemScrollController: ScrollToPage.scrollController,
            //     itemPositionsListener: ScrollToPage.itemPositionsListener,
            //     itemCount: pagesList.length,
            //     itemBuilder: (context, index) {
            //       return pagesList[index];
            //     }),
          )
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
