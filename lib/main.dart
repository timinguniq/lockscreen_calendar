import 'package:flutter/material.dart';
import 'package:platform_helper/platform_helper.dart';

import 'app/app.dart';
import 'bootstrap.dart';

void main() {
  bootstrap(() async {
    final platformHelper = PlatformHelper();
/*
    final loginDataSource = LoginDataSource();

    final sharedPreference = await SharedPreferences.getInstance();
    final preferenceStorage = PreferenceStorage(plugin: sharedPreference);

    final loginRepository = LoginRepository(
      loginDataSource: loginDataSource,
      preferenceStorage: preferenceStorage,
    );
*/

    // Ensure that plugin services are initialized so that `availableCameras()`
    // can be called before `runApp()`
    WidgetsFlutterBinding.ensureInitialized();

    return App(
      platformHelper: platformHelper,
    );
  });
}