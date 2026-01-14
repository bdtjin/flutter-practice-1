import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_practice_1/matzip.dart';

class MatzipRepository {
  // 파이어스토어에서 맛집 가져와서 맛집리스트로 변환해서 전달
  Future<List<Matzip>> getAllMatzip () async {
    print("getAllMatzip 호출됨");
    // 컬렉션 모든 문서들 가져오기
    final colRef = FirebaseFirestore.instance.collection('matzip');
    final result1 = await colRef.get();
    final docs = result1.docs;

    // 문서들 List -> Map
    List<Matzip> matzipList = docs.map((e) {
      // 이 안에서 어떠한 로직을 추가해도 상관없음
      return Matzip.fromJson(e.data());
    },).toList ();

    // 맛집리스트로 변환??
    // 맛집리스트 반환
    return matzipList;
  }
}