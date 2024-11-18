// main_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme and Font Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The quick brown fox jumps over the lazy dog',
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text('Select Theme:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => themeFontProvider.updateTheme(0),
                  child: const Text('Red'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => themeFontProvider.updateTheme(1),
                  child: const Text('Blue'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => themeFontProvider.updateTheme(2),
                  child: const Text('Green'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Select Font:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => themeFontProvider.updateFont(0),
                  child: const Text('Poppins'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => themeFontProvider.updateFont(1),
                  child: const Text('Roboto'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => themeFontProvider.updateFont(2),
                  child: const Text('Montserrat'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
