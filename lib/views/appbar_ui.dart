import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/constants.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';
import 'package:karthi_kayan_portfolio/views/home_ui.dart';
import 'package:karthi_kayan_portfolio/widgets/button_widget.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';
import 'package:popover/popover.dart';

class AppbarUi extends StatefulWidget {
  const AppbarUi({super.key});

  @override
  State<AppbarUi> createState() => _AppbarUiState();
}

class _AppbarUiState extends State<AppbarUi> {
  @override
  Widget build(BuildContext context) {
    bool isVertical = Responsive.isVertical(context);
    return Container(
      width: double.maxFinite,
      height: Responsive.isMobile(context)? 50:65,
      color: MyColors.white,
      child: Row(
        children: [
          Center(
            child: InkWell(
              onTap: (){ScrollToPage.changePage(Pages.heroSection.index);},
              child: Row(
                children: [
                  SizedBox(width: Responsive.isVertical(context)? 15:30,),
                  const Icon(
                    Icons.copyright_outlined,
                    size: 27,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  TextWidget.semiBody(MyStrings.appBarC, context)
                ],
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: isVertical || Responsive.isMobile(context) ? [
              Center(
                child: ButtonWidget
                  (
                    onPressed: () {ScrollToPage.changePage(Pages.contact.index);
                      setState(() {});
                      },
                    height: Responsive.isMobile(context)? 30 : 45,
                    width: Responsive.isMobile(context)? 80:140,
                    label: TextWidget.semiBody(MyStrings.contact, context, color: MyColors.white,),
                ),
              ),
              const SizedBox(width: 20,),
              const ButtonPopOver(),
              const SizedBox(width: 15,),
            ] : [
              TextButtonWidget(
                  onPressed: () {ScrollToPage.changePage(Pages.about.index);},
                  height: 45,
                  width: 140,
                  label: TextWidget.semiBody(MyStrings.about, context, color: MyColors.black,)
              ),
              const SizedBox(width: 20,),
              TextButtonWidget(
                  onPressed: () {ScrollToPage.changePage(Pages.skills.index);},
                  height: 45,
                  width: 145,
                  label: TextWidget.semiBody(MyStrings.skillsServices, context, color: MyColors.black,)
              ),
              const SizedBox(width: 20,),
              TextButtonWidget(
                  onPressed: () {ScrollToPage.changePage(Pages.projects.index);},
                  height: 45,
                  width: 140,
                  label: TextWidget.semiBody(MyStrings.projects, context, color: MyColors.black,)
              ),
              const SizedBox(width: 20,),
              ButtonWidget(
                  onPressed: () {ScrollToPage.changePage(Pages.contact.index);
                  setState(() {});
                    },
                  height: 45,
                  width: 140,
                  label: TextWidget.semiBody(MyStrings.contact, context, color: MyColors.white,)
              ),
              const SizedBox(width: 30,),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonPopOver extends StatelessWidget {
  const ButtonPopOver({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ButtonWidget(
          onPressed: () {
            showPopover(
              context: context,
              bodyBuilder: (context) =>ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  InkWell(
                    onTap: (){ScrollToPage.changePage(Pages.about.index);},
                  child: SizedBox(
                    width: double.infinity,
                      height: 30,
                      child: Center(child: TextWidget.body(MyStrings.about, context, color: MyColors.black,))),
              ),
                  const Divider(),
                  InkWell(
                    onTap: (){ScrollToPage.changePage(Pages.skills.index);},
                    child: SizedBox(
                        width: double.infinity,
                        height: 30,
                        child: Center(child: TextWidget.body(MyStrings.skillsServices, context, color: MyColors.black,))),
                  ),
                  const Divider(),
                  InkWell(
                    onTap: (){ScrollToPage.changePage(Pages.projects.index);},
                    child: SizedBox(
                        width: double.infinity,
                        height: 30,
                        child: Center(child: TextWidget.body(MyStrings.projects, context, color: MyColors.black,))),
                  ),
                ],
              ),
              direction: PopoverDirection.bottom,
              backgroundColor: Colors.white,
              width: 150,
              height: 140,
              arrowHeight: 5,
              arrowWidth: 12,
            );
          },
          height: Responsive.isMobile(context)?30:45,
          width: Responsive.isMobile(context)?40:50,
          label: Icon(Icons.menu, color: MyColors.white,size: Responsive.isMobile(context)?20:30,)
      );
  }
}