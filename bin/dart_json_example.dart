import 'dart:convert'; // dart convert 라이브러리 가져오기

void main() {
  // Map → JSON 문자열 (직렬화)
  Map<String, dynamic> myInfo = {"name": "정하나", "age": 21};
  String jsonString = jsonEncode(myInfo);
  print('직렬화된 JSON 문자열: $jsonString');
  // 출력: {"name":"정하나","age":21}

  List list = [myInfo, myInfo];
  String listJsonString = jsonEncode(list);
  print('리스트 직렬화된 문자열: $listJsonString');
  // 출력: [{"name":"정하나","age":21},{"name":"정하나","age":21}]

  // JSON 문자열 → Map (역직렬화)
  Map<String, dynamic> decodedMap = jsonDecode(jsonString);
  print('역직렬화된 Map: $decodedMap');
  // 출력: {name: 정하나, age: 21}

  // 리스트 형태 JSON 문자열 → List<Map>
  List<dynamic> decodedList = jsonDecode(listJsonString);
  print('역직렬화된 List: $decodedList');
  // 출력: [{name: 정하나, age: 21}, {name: 정하나, age: 21}]
}
