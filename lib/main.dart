import 'package:flutter/material.dart';
import 'package:flutter_practice_1/big_album.dart';
import 'package:flutter_practice_1/extensions.dart';
import 'package:flutter_practice_1/mini_album.dart';
import 'package:flutter_practice_1/rounded_image.dart';
import 'package:flutter_practice_1/title_row.dart';

// 1. 일단 Scaffold 안에서 작업
// 2. 완성되면 위젯클래스로 분리
// 3. 위젯클래스를 별도의 파일로 분리
// 4. Scaffold에 위젯 배치
// 5. 변경되어야 하는 부분들 속성으로 정의에서 수정!

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

///- ListView
///   - ClipRRect : 자녀 위젯 그냥 잘라줌
///      - Image
///   - Row (제목행 이라고 부르자!)(TODO 간격 구현하면서 고민!)
///    - Text
///    - Text
/// - Row
///    - Column (큰앨범이라고 부르자!)
///      - ClipRRect
///         - Image
///      - Text
///      - Text
///    - 큰앨범
///    - 큰앨범
///- 제목행
///- Row (작은앨범 이라고 부르자!)
///    - ClipRRect
///       - Image
///    - Column
///       - Text
///       - Text
///    - Icon
///- 작은앨범
///- 작은앨범
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            20.h,
            // 상단 이미지
            AspectRatio(
              // 가로크기 / 세로 크기
              aspectRatio: 2.5 / 1,
              child: RoundedImage(imageUrl: 'https://picsum.photos/300/200'),
            ),
            20.h,
            // 제목행
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TitleRow(title: "New Albums"),
            ),
            10.h,
            // 큰앨범 들어가는 로우
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigAlbum(
                  imageUrl: 'https://picsum.photos/id/825/200/200',
                  title: 'Messy',
                  artist: '로제',
                ),
                SizedBox(width: 18,),
                BigAlbum(
                  imageUrl: 'https://picsum.photos/id/451/200/200',
                  title: 'This Love',
                  artist: 'Maroon 5',
                ),
                SizedBox(width: 18,),
                BigAlbum(
                  imageUrl: 'https://picsum.photos/id/497/200/200',
                  title: 'Cry',
                  artist: 'Benson Boone',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TitleRow(title: "Song List"),
            ),
            // 작은앨범 들어가는 로우
            MiniAlbum(
              imageUrl: 'https://picsum.photos/id/33/200/200',
              title: '나무',
              artist: '카더가든',
            ),
            SizedBox(height: 15,),
            MiniAlbum(
              imageUrl: 'https://picsum.photos/id/390/200/200',
              title: '무제',
              artist: '도후',
            ),
            SizedBox(height: 15,),
            MiniAlbum(
              imageUrl: 'https://picsum.photos/id/416/200/200',
              title: '이밤이지나면',
              artist: '김연우',
            ),
          ],
        ),
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      actions: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.black,
          ),
          child: Icon(Icons.search, color: Colors.white),
        ),
        SizedBox(width: 16),
      ],
      // title 속성은 안드로이드에서는 왼쪽 기본
      // 아이폰에서는 가운데 기본
      // centerTitle false 주게되면 왼쪽으로 가지만
      // title에 Column 을 배치하면 Column 크기가 앱바 영역 전체를
      // 차지하기 때문에 무용지물
      // 이럴땐 Column의 corssAxisAlignment 속성으로 조정
      // Column과 Row의 corssAxisAlignment 기본값은 가운데!
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Music",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                width: 16,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              SizedBox(width: 3),
              3.w,
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

