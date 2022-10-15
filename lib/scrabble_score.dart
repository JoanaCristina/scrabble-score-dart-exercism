// Put your code here

Map<String, int> letterScoreMap = {
  'A': 1,
  'B': 3,
  'C': 3,
  'D': 2,
  'E': 1,
  'F': 4,
  'G': 2,
  'H': 4,
  'I': 1,
  'J': 8,
  'K': 5,
  'L': 1,
  'M': 3,
  'N': 1,
  'O': 1,
  'P': 3,
  'Q': 10,
  'R': 1,
  'S': 1,
  'T': 1,
  'U': 1,
  'V': 4,
  'X': 8,
  'W': 4,
  'Y': 4,
  'Z': 10,
};

int score(String word) {
  if (word.length >= 1) {
    int sumResult = 0;
    List<String> lettersList = word.split('');
    lettersList.map((letter) {
      String key = letter.toUpperCase();
      sumResult += letterScoreMap[key]!;
    }).toList();

    return sumResult;
  } else {
    return 0;
  }
}

void main(List<String> args) {
  score('rua');
}
