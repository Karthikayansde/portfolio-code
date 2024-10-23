import 'dart:async';

import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/constants.dart';
import 'package:karthi_kayan_portfolio/commons/font_sizes.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:photo_view/photo_view.dart';
// import 'package:video_player/video_player.dart';

final CarouselController _controller = CarouselController();

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  // late VideoPlayerController videoController;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _startAutoChange();
    // videoController = VideoPlayerController.asset("assets/video.MP4")
    // videoController = VideoPlayerController.networkUrl(Uri.parse("https://cdn.pixabay.com/video/2017/11/02/12716-241674181_large.mp4"))
    //   ..initialize().then((_) {
    //     setState(() {
    //       videoController.setVolume(0.0);
    //       videoController.play();
    //       videoController.setLooping(true);
    //     });
    //   });
  }
  void _startAutoChange() {
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      // setState(() {
        _currentIndex = (_currentIndex + 1) % Constants.certificateImageList.length;
      // });
      // setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: Responsive.isDesktop(context) ? Responsive.getHeight(context) - (Responsive.isMobile(context) ? 50 : 65) : null,
      child: Padding(
          padding: EdgeInsets.only(right: Responsive.isMobile(context) ? 15 : 30, left: Responsive.isMobile(context) ? 15:30),
          child: Stack(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget.semiHeader1(MyStrings.about, context),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'I am a BCA (Bachelor of Computer Applications) graduate with a ',
                                  style: TextStyle(
                                    fontSize: FontSizes.body(context),
                                    fontWeight: FontWeights.regular,
                                    color: MyColors.black,fontFamily: Constants.font2,
                                  )),
                              TextSpan(
                                text: 'first-class grade',
                                style: TextStyle(fontSize: FontSizes.body(context), fontWeight: FontWeights.semiBold, color: MyColors.black,fontFamily: Constants.font2,),
                              ),
                              TextSpan(
                                  text: ', completed in June 2023. ',
                                  style: TextStyle(fontFamily: Constants.font2,
                                    fontSize: FontSizes.body(context),
                                    fontWeight: FontWeights.regular,
                                    color: MyColors.black,
                                  )),
                              TextSpan(
                                text: 'I joined CI Global Technology as a software engineer',
                                style: TextStyle(fontFamily: Constants.font2,fontSize: FontSizes.body(context), fontWeight: FontWeights.semiBold, color: MyColors.black),
                              ),
                              TextSpan(
                                  text: ' in July 2023 and have been working here since.\n\n I specialize in creating efficient and user-friendly solutions, from web and mobile apps to backend systems. Let\'s connect and create something great together!',
                                  style: TextStyle(fontFamily: Constants.font2,
                                    fontSize: FontSizes.body(context),
                                    fontWeight: FontWeights.regular,
                                    color: MyColors.black,
                                  )),
                            ])),
                        SizedBox(
                          height: 25,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 250,
                          ),
                          // height: 250,
                          // width: 450,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: AspectRatio(
                                aspectRatio: 16/9,
                                child: AnimatedSwitcher(
                                  duration: Duration(milliseconds: 300),
                                  transitionBuilder: (Widget child, Animation<double> animation) {
                                    return FadeTransition(opacity: animation, child: child);
                                  },
                                  child: Image.asset(
                                    Constants.certificateImageList[_currentIndex],
                                    key: ValueKey<int>(_currentIndex),
                                  ),
                                ),
                                // child: VideoPlayer(videoController)
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'I presented one of my projects, titled \'Intelligent Admissions: The Future of University Decision Making with Machine Learning,\' to the ',
                                  style: TextStyle(fontFamily: Constants.font2,
                                    fontSize: FontSizes.body(context),
                                    fontWeight: FontWeights.regular,
                                    color: MyColors.black,
                                  )),
                              TextSpan(
                                text: 'Tamil Nadu Chief Minister',
                                style: TextStyle(fontFamily: Constants.font2,fontSize: FontSizes.body(context), fontWeight: FontWeights.semiBold, color: MyColors.black),
                              ),
                              TextSpan(
                                  text: '. It was one of 16 projects selected for presentation in the state.',
                                  style: TextStyle(fontFamily: Constants.font2,
                                    fontSize: FontSizes.body(context),
                                    fontWeight: FontWeights.regular,
                                    color: MyColors.black,
                                  )),
                            ])),
                        !Responsive.isDesktop(context)
                            ? SizedBox(
                          height: 10,
                        )
                            : Container(),
                        !Responsive.isDesktop(context)
                            ? Container(
                            width: double.infinity,
                            height: 250,
                            child: CertificateCarousel(
                              scrollDir: Axis.horizontal,
                            ))
                            : Container(),
                      ],
                    ),
                  ),
                  Responsive.isDesktop(context)
                      ? SizedBox(
                    width: 10,
                  )
                      : Container(),
                  Responsive.isDesktop(context)
                      ? Flexible(
                    child: Container(
                        height: double.maxFinite,
                        child: CertificateCarousel(
                          scrollDir: Axis.vertical,
                        )),
                    flex: 1,
                  )
                      : Container(),
                ],
              ),
              Responsive.isDesktop(context)
                  ? Positioned(
                      top: 90,
                      right: 0,
                      child: FloatingActionButton(
                        onPressed: () => _controller.previousPage(),
                        backgroundColor: MyColors.white,
                        child: const Center(
                          child: Icon(Icons.arrow_upward_sharp, size: 30, color: MyColors.black),
                        ),
                      ),
                    )
                  : Container(),
              Responsive.isDesktop(context)
                  ? Positioned(
                      bottom: 90,
                      right: 0,
                      child: FloatingActionButton(
                        backgroundColor: MyColors.white,
                        child: const Center(child: Icon(Icons.arrow_downward_sharp, size: 30, color: MyColors.black)),
                        onPressed: () => _controller.nextPage(),
                      ),
                    )
                  : Container(),
            ],
          )),
    );
  }
}

class CertificateCarousel extends StatefulWidget {
  final Axis scrollDir;

  const CertificateCarousel({Key? key, required this.scrollDir}) : super(key: key);

  @override
  _CertificateCarouselState createState() => _CertificateCarouselState();
}

class _CertificateCarouselState extends State<CertificateCarousel> {

  @override
  Widget build(BuildContext context) {
    return
      // ColoredBox(
      // color: MyColors.red,
      // child: Stack(
      //   children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              scrollPhysics: Responsive.isDesktop(context) ? NeverScrollableScrollPhysics() : null,
              scrollDirection: widget.scrollDir,
              autoPlay: true,
            ),
            items: Constants.certificateImageList
                .map((item) => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          focusColor: MyColors.transparent,
                          hoverColor: MyColors.transparent,
                          highlightColor: MyColors.transparent,
                          splashColor: MyColors.transparent,
                          onTap: (){
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return showImage(item);
                                });
                          },
                          child: Material(
                            elevation: 5,
                            child: Image.asset(item),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          );
      //   ],
      // ),
    // )
  }

  Widget showImage(String source) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      backgroundColor: MyColors.white,
      content: AspectRatio(
        aspectRatio: 3/2,
        child: Stack(
          children: [
            PhotoView(imageProvider: AssetImage(source),),
            Positioned(
              top: 0,
        right: 0,
        child: SizedBox(
          width: 30,
          height: 30,
          child: InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Container(
              color: MyColors.black,
              child: Center(
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),),
          ],
        ),
      )
    );
  }
}
