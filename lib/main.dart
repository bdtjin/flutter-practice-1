import 'package:flutter/material.dart';
import 'package:flutter_practice_1/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // ProviderScope : riverpod 패키지에서 제공하는 위젯
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}
