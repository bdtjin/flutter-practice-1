import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text 위젯의 크기가 없을 경우
        // 글자 길이만큼 크기를 차지한다!
        // 글자가 길어져서 화면크기 이상으로 길어진다면
        // overflow 속성을 활용할 수 없음!
        Expanded(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              // wordSpacing: -5,
              // 글자 가로 간격
              letterSpacing: -1.5,
              // fontsize *height 한 값이 Text 위젯의 높이가 됨
              height: 1,
            ),
          ),
        ),

        Text(
          "See all > ",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        //
      ],
    );
  }
}
