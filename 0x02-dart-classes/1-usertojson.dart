class User {

  String? name;
  int? age;
  double? height;

  User ({this.name, this.age, this.height});

  String showName() {
    return 'Hello $name';
  }

  Map<String, dynamic> toJson() {
    return {
      'name' : name,
      'age' : age,
      'height' : height
    };
  }
}
