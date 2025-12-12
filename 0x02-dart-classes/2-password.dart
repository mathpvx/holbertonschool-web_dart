class Password {
  String password = '';

  Password([this.password = '']);

  bool isValid() {
    final hasUpper = password.contains(RegExp(r'[A-Z]'));
    final hasLower = password.contains(RegExp(r'[a-z]'));
    final hasNum = password.contains(RegExp(r'[0-9]'));
    final minLength = password.length >= 8 && password.length <= 16;

    return hasUpper && hasLower && hasNum && minLength;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
