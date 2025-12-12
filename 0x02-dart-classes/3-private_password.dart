class Password {
  String _password;

  Password({String password = ''}) : _password = password;

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  bool isValid() {
    final hasUpper = _password.contains(RegExp(r'[A-Z]'));
    final hasLower = _password.contains(RegExp(r'[a-z]'));
    final hasNumber = _password.contains(RegExp(r'[0-9]'));
    final validLength =
        _password.length >= 8 && _password.length <= 16;

    return hasUpper && hasLower && hasNumber && validLength;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
