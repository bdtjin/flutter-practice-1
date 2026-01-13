
class Matzip {
  final String name;
  final String address;
  final String rate;

  // 기본 생성자: 클래스를 만들 때 데이터를 채워줍니다.
  Matzip({
    required this.name,
    required this.address,
    required this.rate,
  });

  // 1. fromJson: 서버에서 받은 Map 데이터를 객체로 변환합니다.
  // 이름(Matzip.fromJson)은 관습적으로 정해진 약속입니다.
  factory Matzip.fromJson(Map<String, dynamic> json) {
    return Matzip(
      name: json['상호명'],
      address: json['주소'],
      rate: json['평점'],
    );
  }

  // 2. toJson: 객체 데이터를 다시 서버로 보낼 때 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        '상호명': name,
        '주소': address,
        '평점': rate,
      };
}