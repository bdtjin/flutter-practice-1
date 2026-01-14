import 'dart:convert';

import 'package:flutter_practice_1/matzip.dart';
import 'package:flutter_test/flutter_test.dart';

final jsonData = """
[
  {
    "상호명": "진심왕돈까스 역삼점",
    "주소": "서울특별시 강남구 역삼동 735-15",
    "평점": "4.8"
  },
  {
    "상호명": "해운대 소문난암소갈비",
    "주소": "부산광역시 해운대구 중동 2로 10",
    "평점": "4.9"
  },
  {
    "상호명": "동성로 중앙떡볶이",
    "주소": "대구광역시 중구 동성로2길 81",
    "평점": "4.5"
  }
]
""";

void main (){
  test('컬렉션 메서드', (){
    // 1. Map 으로 바꿔줌
    List<dynamic> box = jsonDecode(jsonData);

    // 2. 객체로 바꾸기
    List<Matzip> matzipList = [];
    for (var i = 0; i < box.length; i++) { 
      Map<String, dynamic> e = box[i];
      Matzip m = convertMatzip(e);
      matzipList.add(m);
    }
    print(matzipList.length);

    // Collection 메서드 : map
    List<Matzip> matzipList2 = box.map((e) {
      return Matzip.fromJson(e);
    },).toList ();
  });
}

Matzip convertMatzip(dynamic e) {
  Matzip m = Matzip.fromJson(e);
  return m;
}