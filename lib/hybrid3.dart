class Student {
  late List<Map<String, String>> people;

  Student(List<Map<String, String>> initialData) {
    people = initialData;
  }

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  output() {
    for (var student in people) {
      print(student);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field, String value) {
    people.removeWhere((element) => element[field] == value);
  }
}
