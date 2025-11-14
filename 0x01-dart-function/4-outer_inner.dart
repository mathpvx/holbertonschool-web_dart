void outer(String name, String id) {
  String inner() {
    // name is "First Last"
    var parts = name.split(' ');
    String firstName = parts[0];
    String lastName = parts[1];
    String lastInitial = lastName[0];

    return 'Hello Agent $lastInitial.$firstName your id is $id';
  }

  print(inner());
}
