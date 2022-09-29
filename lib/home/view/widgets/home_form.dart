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
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //_UsernameInput(),
            const Padding(padding: EdgeInsets.all(12)),
            //_PasswordInput(),
            const Padding(padding: EdgeInsets.all(12)),
            //_LoginButton(),
          ],
        ),
      ),
    );
  }
}
