// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeFontProvider(),
      child: Consumer<ThemeFontProvider>(
        builder: (context, themeFontProvider, child) {
          return MaterialApp(
            title: 'Flutter Theme Demo',
            theme: themeFontProvider.currentTheme,
            home: const MainScreen(),
            debugShowCheckedModeBanner: false, // Menghapus banner debug
          );
        },
      ),
    );
  }
}
