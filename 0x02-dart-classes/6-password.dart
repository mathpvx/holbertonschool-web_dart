class Password {
  String? _password;

  Password({String? password}) : _password = password;

  String get password => _password ?? '';

  set password(String value) {
    _password = value;
  }

  bool isValid() {
    final pwd = _password ?? '';
    final hasUpper = pwd.contains(RegExp(r'[A-Z]'));
    final hasLower = pwd.contains(RegExp(r'[a-z]'));
    final hasNumber = pwd.contains(RegExp(r'[0-9]'));
    final validLength = pwd.length >= 8 && pwd.length <= 16;

    return hasUpper && hasLower && hasNumber && validLength;
  }

  @override
  String toString() {
    return 'Your Password is: ${_password ?? ''}';
  }
}
