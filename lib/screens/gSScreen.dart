import 'dart:async';
import 'package:flutter/material.dart';
import 'package:final_1/widgets/gSSlideWidget.dart';
import 'package:final_1/widgets/gSSlideDot.dart';
import 'package:final_1/models/gSSlideModel.dart';

class GSScreen extends StatefulWidget {
  @override
  _GSScreenState createState() => _GSScreenState();
}

class _GSScreenState extends State<GSScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(
      Duration(seconds: 5),
      (Timer timer) {
        if (_currentPage < 2)
          _currentPage++;
        else
          _currentPage = 0;
        _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
                // Stack(
                //   alignment: AlignmentDirectional.bottomCenter,
                //   children: [
                //     PageView.builder(
                //       // onPageChanged: _onPageChanged,
                //       // scrollDirection: Axis.horizontal,
                //       controller: _pageController,
                //       itemCount: gSSlideList.length,
                //       itemBuilder: (context, index) => GSSlideWidget(index),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SafeArea(
  //       child: Padding(
  //         padding: const EdgeInsets.all(20.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.stretch,
  //           children: [
  //             // Image.asset(
  //             //   'assets/images/logo.png',
  //             // ),
  //             Text('F-Business'),
  //             Expanded(
  //               child: Stack(
  //                 alignment: AlignmentDirectional.bottomCenter,
  //                 children: [
  //                   PageView.builder(
  //                     onPageChanged: _onPageChanged,
  //                     scrollDirection: Axis.horizontal,
  //                     controller: _pageController,
  //                     itemCount: gSSlideList.length,
  //                     itemBuilder: (context, index) => GSSlideWidget(index),
  //                   ),
  //                   Stack(
  //                     alignment: AlignmentDirectional.topStart,
  //                     children: [
  //                       Container(
  //                         child: Row(
  //                           mainAxisSize: MainAxisSize.min,
  //                           mainAxisAlignment: MainAxisAlignment.center,
  //                           children: [
  //                             GSSlideDot(false),
  //                             // for (int i = 0; i < gSSlideList.length; i++)
  //                             //   if (i == _currentPage) GSSlideDot(true) else GSSlideDot(false)
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             ElevatedButton(
  //               onPressed: () {},
  //               child: Text(
  //                 'Sign Up',
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                 ),
  //               ),
  //               style: ElevatedButton.styleFrom(
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(50),
  //                 ),
  //                 padding: EdgeInsets.all(13),
  //                 primary: Theme.of(context).primaryColor,
  //                 elevation: 5,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
