import 'package:flutter/material.dart';
import 'package:mvcs/screen/home_page.dart';
import 'package:mvcs/screen/login_page.dart';
import 'package:provider/provider.dart';

import 'model/app_model.dart';

class AppScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Bind to AppModel.currentUser
    String currentUser = context.select<AppModel, String>((value) => value
        .currentUser); //Spas: This fetches the AppModel in the Provider context and does a .map() on it to return only the currentUser field
    //tldr; select returns only one property from the AppModel context

    // Return the current view, based on the currentUser value:
    return Scaffold(
      body: currentUser != null ? HomePage() : LoginPage(),
    );
  }
}
