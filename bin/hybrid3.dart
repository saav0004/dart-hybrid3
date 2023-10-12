import 'dart:convert';
// import Student class
import 'package:hybrid3/hybrid3.dart' as hybrid3;

void main(List<String> arguments) {
  String jsonStudents = '''
[
  {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
  {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
  {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
  {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]
''';

  List<dynamic> jsonList = json.decode(jsonStudents);

  List<Map<String, String>> resultMapList = jsonList.map((item) {
    Map<String, String> resultMap = {};
    if (item is Map<String, dynamic>) {
      item.forEach((key, value) {
        if (value is String) {
          resultMap[key] = value;
        }
      });
    }
    return resultMap;
  }).toList();

  hybrid3.Student student = hybrid3.Student(resultMapList);
  student.plus({
    'first': 'Luciano',
    'last': 'Aavedra',
    'email': 'saav0004@algonquin.com'
  });
  student.sort('last');
  student.remove('first', "Adesh");
  student.output();
}
