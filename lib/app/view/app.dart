import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lockscreen_calendar/splash/splash.dart';
import 'package:platform_helper/platform_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required PlatformHelper platformHelper,
  })  : _platformHelper = platformHelper,
        super(key: key);

  final PlatformHelper _platformHelper;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _platformHelper),
      ],
      child: AppView(),
      /*
      MultiBlocProvider(
        providers: [

          BlocProvider(
            create: (_) => AuthenticationBloc(
              authenticationRepository: _authenticationRepository,
              userRepository: _userRepository,
            ),
          ),

        ],
        child: AppView(
        ),
      ),

       */
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({
    Key? key,
  })  : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'lockscreen',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application
        // with "flutter run". You'll see the
        // application has a blue toolbar.
        // Then, without quitting the app, try
        // changing the primarySwatch
        // below to Colors.green and then invoke
        // "hot reload" (press "r" in the console
        // where you ran "flutter run",
        // or simply save your changes to
        // "hot reload" in a Flutter IDE).
        // Notice that the counter didn't
        // reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', ''), Locale('ko', '')],
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}