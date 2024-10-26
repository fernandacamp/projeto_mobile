import 'package:flutter/material.dart';

import '../screens/login_page.dart';
import '../screens/menu_page.dart';
import '../screens/profile_page.dart';
import '../screens/register_page.dart';

class AppRoutes {

  static const String login = "/login";
  static const String menu = "/menu";
  static const String profile = "/profile";
  static const String register = "/register";

  static final Map<String, WidgetBuilder> routes = {
    login: (context) => LoginPage(),
    menu: (context) => MenuPage(),
    profile: (context) => ProfilePage(),
    register: (context) => RegisterPage(),
  };

}