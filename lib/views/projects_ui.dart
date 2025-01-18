import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/project_data.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';
import 'package:karthi_kayan_portfolio/widgets/button_widget.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';

class ProjectsUi extends StatefulWidget {
  const ProjectsUi({super.key});

  @override
  State<ProjectsUi> createState() => _ProjectsUiState();
}

class _ProjectsUiState extends State<ProjectsUi> {
  // bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Responsive.isMobile(context) ? 15 : 30, left: Responsive.isMobile(context) ? 15 : 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          TextWidget.header1(MyStrings.projects, context),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceEvenly,
                children: List.generate(/*isShowMore?*/ ProjectData.projectsList.length /*: 4*/, (index) {
                  // return smallCard(context,);
                  // return projectCard(context,0);
                  return projectBigCardUpdated(context,0);
                })),
          ),
          // !isShowMore ? SizedBox(
          //   height: 5,
          // ):Container(),
          // !isShowMore ? Align(
          //   alignment: Alignment.centerRight,
          //   child: TextButtonWidget(
          //       onPressed: () {setState(() {
          //         isShowMore = true;
          //       });},
          //       height: 45,
          //       width: 140,
          //       label: TextWidget.semiBody(MyStrings.showMore, context, color: MyColors.black,)
          //   ),
          // ):Container(),
        ],
      ),
    );
  }

  Widget smallCard(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Responsive.getWidth(context) < 900 ? 300: (Responsive.getWidth(context)-100)/2 ,
        decoration: BoxDecoration(color: MyColors.white , borderRadius: BorderRadius.all(Radius.circular(20)),boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 0,
          blurRadius: 5,
          offset: Offset(-5, 5),)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/certificate44.JPG"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget.header1Project('Comment Lines Remover', context),
                  SizedBox(height: 5,),
                  TextWidget.header4Project(MyStrings.techStacks, context),
                  Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                      children: List.generate(3, (index) {
                        return Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            SizedBox(width: 10,),
                            SizedBox(width: 25, child: Image.asset("assets/gmail.png")),
                            SizedBox(width: 5,),
                            TextWidget.header4ProjectRegular("gmail", context),
                          ],
                        );
                      })),
                  SizedBox(height: 10,),
                  TextWidget.body("     I am a professional software developer who develops high-performing and user-friendly software. I develop websites and Android and iOS mobile apps with well-designed responsive layouts.", context,textAlign: TextAlign.justify),
                  SizedBox(height: 10,),
                  TextWidget.header4Project(MyStrings.availableIn, context),
                  Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      children: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 8),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                color: MyColors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),)]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    SizedBox(width: 5,),
                                    SizedBox(width: 25, child: Image.asset("assets/gmail.png")),
                                    SizedBox(width: 5,),
                                    TextWidget.header4ProjectRegular("gmail", context),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      })),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget projectCard(BuildContext context, int index) {
    return Column(
      children: [
        !Responsive.isDesktop(context)? imageBox(context):Container(),
        Row(
          children: [
            Responsive.isDesktop(context)? imageBox(context):Container(),
            Responsive.isDesktop(context)? SizedBox(
              width: 20,
            ):Container(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Responsive.isMobile(context) ?10:0,
                  ),
                  TextWidget.header1(ProjectData.projectsList[index]['name'], context),
                  SizedBox(
                    height: Responsive.isMobile(context) ? 10 : 15,
                  ),
                  TextWidget.body(ProjectData.projectsList[index]['details'], context),
                  SizedBox(
                    height: Responsive.isMobile(context) ?10: 15,
                  ),
                  Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(ProjectData.projectsList[index]['availableIn'].length, (index) {
                        return Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [

                            index == 0?TextWidget.header4(MyStrings.availableIn, context):Wrap(),
                            index == 0?SizedBox(width: 5,):Wrap(),
                                        SizedBox(width: 25, child: Image.asset("assets/gmail.png")),
                                        SizedBox(width: 5,),
                                        TextWidget.header4("gmail", context),
                                        TextWidget.header4(index != 5 ? ', ' : '.', context),
                          ],
                        );
                      })),
                  SizedBox(
                    height: Responsive.isMobile(context) ? 5 : 10,
                  ),
                  TextWidget.header4(MyStrings.techStacks, context),
                  SizedBox(
                    height: 5,
                  ),
                  Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(5, (index) {
                        return techStack(context);
                      }))
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Divider(color: MyColors.black,height: 1,),
        SizedBox(height: 10,),
      ],
    );
  }

  Widget techStack(BuildContext context){
    return Container(
        height: Responsive.isDesktop(context)? 70:40,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(width: Responsive.isDesktop(context)? 70:40, child: Image.asset("assets/gmail.png")),
            SizedBox(width: 10,),
            TextWidget.header1("Gmail", context, color: MyColors.textSecondary,),
            SizedBox(width: 15,),
          ],
        ));
  }

  Widget imageBox(BuildContext context){
    return AspectRatio(
      aspectRatio: 3/2,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: MyColors.black), image: DecorationImage(image: AssetImage("assets/certificate44.JPG"))),
      ),
    );
  }

  Widget projectBigCardUpdated(BuildContext context, int index) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1600
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.lightGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Responsive.isVertical(context) || Responsive.isMobile(context) ?Column(
          children: [
            imageBox(context),
            SizedBox(height: 10,),
            text(index),
          ],
        ): Row(
          children: [
            Expanded(
              child: text(index)
            ),
            SizedBox(width: 8,),
            Expanded(child: imageBox(context)),
          ],
        )
      ),
    );
  }
  Widget text(int index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextWidget.header1(ProjectData.projectsList[index]['name'], context),
        SizedBox(height: 10,),
        TextWidget.body(ProjectData.projectsList[index]['details'], context),
        Divider(color: MyColors.black,thickness: 0.5,),
        Wrap(
          children: [
            ...ProjectData.projectsList[index]['techStack'].map<Widget>((fileName) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red,height: 40,width: 100,),
            )),
          ],
        ),
        Divider(color: MyColors.black,thickness: 0.5,),
        TextWidget.semiBody(MyStrings.viewOn, context),
        SizedBox(height: 5,),
        TextOutLinedButtonWidget(
            onPressed: () {},
            height: 45,
            width: 145,
            label: TextWidget.body(MyStrings.skillsServices, context, color: MyColors.black,)
        ),
      ],
    );
  }
}
