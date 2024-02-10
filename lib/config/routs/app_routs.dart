import 'package:flutter/material.dart';
import 'package:online_gym/featuers/home/presentation/pages/HomeScreen.dart';

class AppRouts {
  static const home = "home";
}

class Rout {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouts.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      default :
        return  MaterialPageRoute(
          builder: (context) => ErrorScreen(),
        );
    }
  }
}
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Error"),
      ),
    );
  }
}
