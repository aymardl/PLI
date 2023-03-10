import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:my_app/pages/login/login.dart';
void main() async {
  runApp(const MyApp());
   WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
  
}

ColorScheme defaultColorScheme = const ColorScheme(
  primary: Color(0xff8A2BE2),
  secondary: Color(0xff03DAC6),
  surface: Color(0xff181818),
  background: Color(0xff121212),
  error: Color(0xffCF6679),
  onPrimary: Color(0xff000000),
  onSecondary: Color(0xff000000),
  onSurface: Color(0xffffffff),
  onBackground: Color(0xffffffff),
  onError: Color(0xff000000),
  brightness: Brightness.dark,
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key, AdaptiveThemeMode? savedThemeMode}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PLI',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: defaultColorScheme,
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'Login UI'),
    );
  }
  }
