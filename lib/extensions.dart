import 'package:flutter/material.dart';



extension DoubleExt on double{
  // getter => 파라미터 없는 함수에서 괄호 생략!
  Widget get W {
    return SizedBox(width: this,);
  }

  Widget get h {
  return SizedBox(height: this);
}
}

extension IntExt on int {
  Widget get w {
    return SizedBox(width: toDouble(),);
  }

  Widget get h {
    return SizedBox(height: toDouble(),);
  }
}