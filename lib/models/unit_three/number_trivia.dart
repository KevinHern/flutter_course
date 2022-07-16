class NumberTrivia {
  final int number;
  final String trivia;

  NumberTrivia({required this.number, required this.trivia});

  static NumberTrivia fromJson(Map<String, dynamic> json) =>
      NumberTrivia(number: json["number"], trivia: json["text"]);
}
