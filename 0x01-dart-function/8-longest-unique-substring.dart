String longestUniqueSubstring(String str) {
  if (str.isEmpty) return '';

  Map<String, int> lastIndex = {};
  int start = 0;
  int maxLen = 0;
  int maxStart = 0;

  for (int i = 0; i < str.length; i++) {
    String ch = str[i];

    if (lastIndex.containsKey(ch) && lastIndex[ch]! >= start) {
      // move start right after last occurrence
      start = lastIndex[ch]! + 1;
    }

    lastIndex[ch] = i;

    int currentLen = i - start + 1;
    if (currentLen > maxLen) {
      maxLen = currentLen;
      maxStart = start;
    }
  }

  return str.substring(maxStart, maxStart + maxLen);
}
