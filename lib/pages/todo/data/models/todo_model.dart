class Todo {
  String text;
  String date;
  Todo({required this.text, required this.date});

  factory Todo.fromJson(Map<String, dynamic> json) =>
      Todo(text: json['text'], date: json['date']);

  Map<String, dynamic> toJson() => {'text': text,'date': date};
}