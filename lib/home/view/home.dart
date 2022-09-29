import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lockscreen_calendar/home/bloc/home_bloc.dart';
import 'package:lockscreen_calendar/home/view/widgets/home_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    /// 의존성 주입 하는 곳

    return BlocProvider(
      create: (context){
        return HomeBloc();
      },
      child: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: HomeForm(),
      ),
    );
  }
}
