// 색상을 관리하는 뷰모델
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorState {
  Color color;
  ColorState(this.color);
}

class ColorViewModel extends Notifier<ColorState> {
  @override
  ColorState build() {
    return ColorState(Colors.yellow);
  }
}

// Notifier는 똑같음
final ColorViewModelProvider = NotifierProvider<ColorViewModel, ColorState>(() {
  return ColorViewModel();
});

// AutoDisposeNotifier
final ColorViewModelProvider2 = NotifierProvider<ColorViewModel, ColorState>(
  () {
    return ColorViewModel();
  },
  isAutoDispose: true,
);

// FamilyNotifier
class ColorViewModel2 extends Notifier<ColorState> {
  final String pageName;
  ColorViewModel2(this.pageName);

  @override
  ColorState build() {
    return ColorState(Colors.yellow);
  }
}
final ColorViewModelProvider3 =
    NotifierProvider.family<ColorViewModel2, ColorState, String>((String arg) {
      return ColorViewModel2(arg);
    },
    isAutoDispose: true, // true로 하면 AutoDisposeFamailyNotifier가 되고 flase로 하면 FamilyNotifier가 된다
    );
