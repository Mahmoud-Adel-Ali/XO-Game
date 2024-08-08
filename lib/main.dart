import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xo_game/views/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // this step used to set device not rotated
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const XOGame());
  });
}

class XOGame extends StatelessWidget {
  const XOGame({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const SplashView(),
    );
  }
}
