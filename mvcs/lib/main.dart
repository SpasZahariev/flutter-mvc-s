import 'package:flutter/material.dart';
// import 'package:mvcs/command/base_command.dart';
import './command/base_command.dart' as Commands;
import 'package:mvcs/service/user_service.dart';
import 'package:provider/provider.dart';

import 'app_scaffold.dart';
import 'model/app_model.dart';
import 'model/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext _) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (c) => AppModel()),
        ChangeNotifierProvider(create: (c) => UserModel()),
        Provider(create: (c) => UserService()),
      ],
      child: Builder(builder: (context) {
        Commands.init(context);
        return MaterialApp(home: AppScaffold());
      }),
    );
  }
}
