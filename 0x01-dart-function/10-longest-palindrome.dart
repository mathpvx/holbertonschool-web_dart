import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }

  String best = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j < s.length; j++) {
      String sub = s.substring(i, j + 1); // inclusive j

      if (isPalindrome(sub)) {
        if (sub.length > best.length) {
          best = sub; // only replace if strictly longer -> keeps first in case of tie
        }
      }
    }
  }

  if (best.isEmpty) {
    return 'none';
  }
  return best;
}
