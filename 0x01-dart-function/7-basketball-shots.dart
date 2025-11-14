int _scoreTeam(Map<String, int> team) {
  int freeThrows = team['Free throws'] ?? 0;
  int twoPointers = team['2 pointers'] ?? 0;
  int threePointers = team['3 pointers'] ?? 0;

  return freeThrows * 1 + twoPointers * 2 + threePointers * 3;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int scoreA = _scoreTeam(teamA);
  int scoreB = _scoreTeam(teamB);

  if (scoreA > scoreB) {
    return 1;
  } else if (scoreB > scoreA) {
    return 2;
  } else {
    return 0;
  }
}
