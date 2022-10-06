import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lockscreen_calendar/home/bloc/home_bloc.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        /*
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Failure')),
            );
        }
        */
      },
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 1개의 행에 보여줄 item 갯수
          childAspectRatio: 1 / 2, // item 의 가로 1, 세로 2의 비율
          mainAxisSpacing: 10, // 수평 Padding
          crossAxisSpacing: 10, // 수직 Padding
        ),
        itemBuilder: (BuildContext context, int index) {
          // item 의 반복문 항목 형성
          return GestureDetector(
            onTap: () {
              log('index : $index');
            },
            // TODO : 나중에 Container 대신 ImageView 넣어야 될듯.
            child: Container(
              color: Colors.lightGreen,
              child: Text(' Item : $index'),
            ),
          );
        },
      ),
    );
  }
}
