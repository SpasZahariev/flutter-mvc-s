import 'package:flutter/material.dart';
import 'package:mvcs/model/app_model.dart';
import 'package:mvcs/model/user_model.dart';
import 'package:mvcs/service/user_service.dart';
import 'package:provider/provider.dart';

BuildContext _mainContext;
void init(BuildContext c) => _mainContext = c;

// Provide quick lookup methods for all the top-level models and services.
class BaseCommand {
  // Models
  UserModel userModel = _mainContext.read();
  AppModel appModel = _mainContext.read();
  // Services
  UserService userService = _mainContext.read();
}
