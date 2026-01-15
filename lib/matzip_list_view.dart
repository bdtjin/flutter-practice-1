import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_1/home_view_model.dart';
import 'package:flutter_practice_1/matzip.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. MatzipListView를 따로 파일로 빼서 ComsumerWidget으로 관리
class MatzipListView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ViewModel의 상태를 감시 *ref.watch
    final state = ref.watch(homeViewModelProvider);
    return ListView.builder(
      itemCount: state.matzipList.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            children: [
              Text(state.matzipList[index].name),
              Text(state.matzipList[index].address),
              Text(state.matzipList[index].rate),
            ],
          ),
        );
      },
    );
  }
}
