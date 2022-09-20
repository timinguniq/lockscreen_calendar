import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const SplashPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    //final preferenceStorage = context.read<PreferenceStorage>();
    return SplashView();
  }
}

class SplashView extends StatefulWidget {
  const SplashView({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          log('animation end');
          // TODO : 애니메이션 종료 화면 전환을 해야 됨.

        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300,
      width: 300,
      child: Lottie.asset(
        'assets/lottie/test.json',
        fit: BoxFit.cover,
        controller: _controller,
        onLoaded: (composition) {
          // Configure the AnimationController with the duration of the
          // Lottie file and start the animation.
          _controller
            ..duration = composition.duration
            ..forward();
        },
      ),
    );
  }
}