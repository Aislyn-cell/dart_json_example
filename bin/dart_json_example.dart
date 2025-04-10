import 'dart:convert';

// User 클래스 정의
class User {
  User({required this.name, required this.age});

  String name;
  int age;

  // 역직렬화: Map → User
  User.fromJson(Map<String, dynamic> map)
    : this(name: map['name'], age: map['age']);

  // 직렬화: User → Map
  Map<String, dynamic> toJson() {
    return {"name": name, "age": age};
  }
}

void main() {
  // User 객체 생성
  User user = User(name: "정하나", age: 21);

  // User → JSON 문자열 (직렬화)
  String jsonString = jsonEncode(user.toJson());
  print("User 객체 → JSON 문자열: $jsonString");
  // 출력: {"name":"정하나","age":21}

  // JSON 문자열 → User 객체 (역직렬화)
  String sampleJson = '{"name":"정하나","age":21}';
  Map<String, dynamic> decodedMap = jsonDecode(sampleJson);
  User decodedUser = User.fromJson(decodedMap);
  print("JSON 문자열 → User 객체: 이름=${decodedUser.name}, 나이=${decodedUser.age}");
  // 출력: 이름=정하나, 나이=21
}
