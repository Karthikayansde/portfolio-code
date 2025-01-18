// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/constants.dart';
import 'package:karthi_kayan_portfolio/commons/font_sizes.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/services/copy_paste_service.dart';
import 'package:karthi_kayan_portfolio/services/functional_services.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';
import 'package:karthi_kayan_portfolio/services/url_launcher.dart';
import 'package:karthi_kayan_portfolio/views/contact_ui.dart';
import 'package:karthi_kayan_portfolio/widgets/contact_icon_widget.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';

class HeroSectionUi extends StatefulWidget {
  const HeroSectionUi({super.key});

  @override
  State<HeroSectionUi> createState() => _HeroSectionUiState();
}

class _HeroSectionUiState extends State<HeroSectionUi> {


  final player = AudioPlayer();

  Future<void> playPlayer() async {
    await player.play(AssetSource('/name_sound.mp3'));
  }

  @override
  void initState() {
    super.initState();
    // _startTextLoop();
    startTyping();
  } 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //minheight = 30+300+135+200
      height: Responsive.getHeight(context) > 700? Responsive.getHeight(context)-(Responsive.isMobile(context)? 50:65) : 700,
      width: double.maxFinite,
        child: Padding(
        padding: EdgeInsets.only(right: Responsive.isMobile(context)? 15:30, left: Responsive.isMobile(context)? 15:30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                profileImage(),
                const SizedBox(width: 50,),
                Responsive.getWidth(context)<720?Container():Expanded(
                  child: introText(),
                ),
                const SizedBox(width: 10,),

                Responsive.isDesktop(context)? const SizedBox(width: 200, height: 600,child: ScrollLoop(
                  images: Constants.logoImageList,
                  scrollDir: Axis.vertical,
                )):Container(),

              ],
            ),
            Responsive.getWidth(context)<720?const SizedBox(height: 20,):Container(),
            Responsive.getWidth(context)<720?introText():Container(),
            !Responsive.isDesktop(context)? const SizedBox(width: double.maxFinite, height: 150,child: ScrollLoop(
              images: Constants.logoImageList,
              scrollDir: Axis.horizontal,
            )):Container(),

          ],
        ),
      )
    );
  }
//typing style for role----------
  List<String> texts = [MyStrings.role1, MyStrings.role2, MyStrings.role3, MyStrings.role4, ];
  int currentTextIndex = 0;
  String displayedText = '';
  int charIndex = 0;
  void startTyping() async {
    while (true) {
      // Type each character one by one
      for (charIndex = 0; charIndex <= texts[currentTextIndex].length; charIndex++) {
        setState(() {
          displayedText = texts[currentTextIndex].substring(0, charIndex);
        });
        await Future.delayed(Duration(milliseconds: 50)); // Delay for typing effect
      }

      // Wait before clearing the text
      await Future.delayed(Duration(seconds: 2));

      // Clear the text one by one
      for (charIndex = texts[currentTextIndex].length; charIndex >= 0; charIndex--) {
        setState(() {
          displayedText = texts[currentTextIndex].substring(0, charIndex);
        });
        await Future.delayed(Duration(milliseconds: 25)); // Delay for deleting effect
      }

      // Move to the next text
      currentTextIndex = (currentTextIndex + 1) % texts.length;
    }
  }
//typing style for role area over-------------

  // text disable and enable style--------------

  int _currentIndex = 0;
  bool _isTextVisible = true;

  void _startTextLoop() async {
    while (true) {
      // Make text visible (fade-in)
      setState(() {
        _isTextVisible = true;
      });

      // Wait for 2 seconds while the text is visible
      await Future.delayed(Duration(milliseconds: 2500));

      // Make text invisible (fade-out)
      setState(() {
        _isTextVisible = false;
      });

      // Wait for the fade-out to complete (1 second)
      await Future.delayed(Duration(seconds: 1));

      // Update the text to the next one in the list
      setState(() {
        _currentIndex = (_currentIndex + 1) % texts.length; // Loop back to the first text after the last one
      });
    }
  }

  // text disable and enable style--------------
  Widget introText(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(
        //   height: Responsive.isMobile(context)? 110 :Responsive.getWidth(context)<920?120:135,
        //   child: Stack(
        //     children: [
              // Positioned(
              //   top: 0,
              //   child: RichText(text: TextSpan(
              //       children: [
              //         TextSpan(text: 'my name is ', style: TextStyle(fontFamily: Constants.font, fontSize: FontSizes.header2(context), fontWeight: FontWeights.regular, color: MyColors.black,)),
              //         TextSpan(text: 'Karthi Kayan', style: TextStyle(fontFamily: Constants.font, fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,)),
              //       ]
              //   )),
              // ),
              // Positioned(
              //   bottom: 0,
              //   child: Row(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(top: 5.0),
              //         child: TextWidget.semiHeader2('I am a ', context),
              //       ),
              //       const SizedBox(
              //         width: 3,
              //       ),
              //       Text(displayedText, style: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
              //       // SizedBox(
              //       //   height: 100,
              //       //   child:
              //         // AnimatedTextKit(animatedTexts: [
              //         //   RotateAnimatedText(MyStrings.role1, textStyle: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
              //         //   RotateAnimatedText(MyStrings.role2, textStyle: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
              //         //   RotateAnimatedText(MyStrings.role3, textStyle: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
              //         //   RotateAnimatedText(MyStrings.role4, textStyle: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
              //         // ], ),
              //       // )
              //     ],
              //   ),
              // )
        //     ],
        //   ),
        // ),

        RichText(text: TextSpan(
            children: [
              TextSpan(text: 'my name is ', style: TextStyle(fontFamily: Constants.font, fontSize: FontSizes.header2(context), fontWeight: FontWeights.regular, color: MyColors.black,)),
              TextSpan(text: 'Karthi Kayan', style: TextStyle(fontFamily: Constants.font, fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,)),
            ]
        )),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: TextWidget.semiHeader2('I am a ', context),
            ),
            const SizedBox(
              width: 3,
            ),
            // AnimatedOpacity(
            //   opacity: _isTextVisible ? 1.0 : 0.0,
            //   duration: Duration(seconds: 1), // 1-second fade-in/out animation
            //   child: StrokeText(text: texts[_currentIndex], textStyle: TextStyle( letterSpacing: 3, fontSize: FontSizes.header2(context), /*fontWeight: FontWeights.semiBoldHeader,*/ color: MyColors.white,fontFamily: Constants.font, ), strokeColor: MyColors.black, strokeWidth: Responsive.isDesktop(context)? 3:2,),
            // ),
            Text(displayedText, style: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
            // SizedBox(
            //   height: 100,
            //   child:
            // AnimatedTextKit(animatedTexts: [
            //   RotateAnimatedText(MyStrings.role1, textStyle: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
            //   RotateAnimatedText(MyStrings.role2, textStyle: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
            //   RotateAnimatedText(MyStrings.role3, textStyle: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
            //   RotateAnimatedText(MyStrings.role4, textStyle: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.semiBoldHeader, color: MyColors.black,fontFamily: Constants.font, )),
            // ], ),
            // )
          ],
        ),
        SizedBox(height: 10,),
        RichText(text: TextSpan(
            children: [
              TextSpan(text: 'I am a professional software developer specializing in ', style: TextStyle(fontSize: FontSizes.body(context), fontWeight: FontWeights.regular, color: MyColors.black,fontFamily: Constants.font2,)),
              TextSpan(text: 'creating websites and apps for Android and iOS', style: TextStyle(fontSize: FontSizes.body(context), fontWeight: FontWeights.semiBold, color: MyColors.black,fontFamily: Constants.font2,)),
              TextSpan(text: '. My work features user-friendly, high-performing, and well-designed responsive layouts. ', style: TextStyle(fontSize: FontSizes.body(context), fontWeight: FontWeights.regular, color: MyColors.black,fontFamily: Constants.font2,)),
              TextSpan(text: 'I transform your vision into software that functions seamlessly across all platforms and devices', style: TextStyle(fontSize: FontSizes.body(context), fontWeight: FontWeights.semiBold, color: MyColors.black,fontFamily: Constants.font2,)),
              TextSpan(text: ', including web, Android, iOS, macOS, Windows, mobile, and desktop.', style: TextStyle(fontSize: FontSizes.body(context), fontWeight: FontWeights.regular, color: MyColors.black,fontFamily: Constants.font2,)),
            ]
        )),
        SizedBox(height: 10,),
        Row(
          children: [
            Row(
              children: [
                ContactIconWidget(image: "assets/gmail.png", onPressed: () async {
                  await FunctionalServices.launchAndCopyUrl(context: context, URL: Constants.linkLinkedIn);
                },label: '',),
                ContactIconWidget(image: "assets/gmail.png", onPressed: (){
                },label: '',),
                ContactIconWidget(image: "assets/gmail.png", onPressed: (){},label: '',),
                ContactIconWidget(image: "assets/gmail.png", onPressed: (){},label: '',),
              ],
            ),
            Spacer(),
            !Responsive.isMobile(context)? ContactUi.resumeBtn(context):Container(),
          ],
        ),
        Responsive.isMobile(context)? SizedBox(height: 10,):Container(),
        Responsive.isMobile(context)? Align(alignment: Alignment.centerRight, child: ContactUi.resumeBtn(context)):Container(),
      ],
    );
  }
  Widget profileImage(){
    return Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: Responsive.isVertical(context)?2: 4, bottom: Responsive.isVertical(context)?2: 4, ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                width: Responsive.getWidth(context)<920?160:240,
                height: Responsive.getWidth(context)<920?200:300,
                'assets/myPhoto.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(17)),
                  border: Border.all(width: Responsive.isVertical(context)?2:4, color: MyColors.white)
              ),
              child: Center(
                child: FloatingActionButton(
                  onPressed: (){
                    playPlayer();
                  },
                  backgroundColor: MyColors.white,
                  child: const Center(
                    child: Icon(Icons.volume_up_outlined),
                  ),
                ),
              ),
            ),
          )
        ],
      );
  }
}


class ScrollLoop extends StatefulWidget {
  final List<String> images;
  final Axis scrollDir;
  const ScrollLoop({super.key, required this.images, required this.scrollDir});

  @override
  ScrollLoopState createState() => ScrollLoopState();
}

class ScrollLoopState extends State<ScrollLoop> {
  final ScrollController _controller = ScrollController();
  bool _forward = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _startScroll();
    });
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent ||
          _controller.position.pixels == _controller.position.minScrollExtent) {
        _forward = !_forward;
        _startScroll();
      }
    });
  }
  void _startScroll() {
    final double scrollEnd = _forward
        ? _controller.position.maxScrollExtent
        : _controller.position.minScrollExtent;
    _controller.animateTo(
      scrollEnd,
      duration: const Duration(milliseconds: 8000),
      curve: Curves.linear,
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AbsorbPointer(
      child: Material(color: MyColors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(scrollbars: false),
                  child: ListView.builder(
                    shrinkWrap: true,
                    controller: _controller,
                    scrollDirection: widget.scrollDir,
                    itemCount: widget.images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: widget.scrollDir == Axis.horizontal?0: 50, left: widget.scrollDir == Axis.horizontal?50: 0, ),
                        child: SizedBox(
                          width: size.width / (widget.scrollDir == Axis.horizontal? 8:2),
                          height: size.height / (widget.scrollDir == Axis.horizontal?2: 8),
                          // width: 130,
                          // height: 130,
                          child: Image.asset(widget.images[index], width: 180,height: 180,),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}