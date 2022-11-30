import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/splash_screen.dart';
import 'package:notify/view_model/auth/password_notifier.dart';
import 'package:notify/view_model/auth/realtime_text_update.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: AppThemeColors.backgroundColor,
          statusBarBrightness: Brightness.dark // <-- doesn't work
          ),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PasswordNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => RealTimeTextUpdateProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notify',
        theme: ThemeData(
          textTheme: const TextTheme(
            headline1: TextStyle(color: Colors.white),
            headline2: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
            subtitle1: TextStyle(color: Color.fromARGB(255, 188, 188, 188)),
          ),
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
