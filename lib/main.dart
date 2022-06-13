import 'package:flutter/material.dart';
import './screens/Result/result.dart';
import './screens/home/home.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  // Add these 2 lines
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR"),
      initialRoute: '/',
      routes: {
        '/': (context) => homePage(),
        '/result': (context) => Result(),
      },
    );
  }
}
