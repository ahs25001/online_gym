import 'package:flutter/material.dart';
import 'package:online_gym/featuers/home/presentation/pages/HomeScreen.dart';

class AppRouts {
  static const String  home = "home";
  // static const String  login = "login";
}

class Rout {
  static Route onGenerate(RouteSettings settings) {
    // settings.
    switch (settings.name) {
      case AppRouts.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default :
        return  MaterialPageRoute(
          builder: (context) => const ErrorScreen(),
        );
    }
  }
}
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Error"),
      ),
    );
  }
}
