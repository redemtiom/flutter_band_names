class Band {
  Band({required this.id, required this.name, required this.votes});

  String id;
  String name;
  int votes;

  factory Band.fromMap(Map<String, dynamic> obj) => Band(
    id: obj['id'],
    name: obj['name'],
    votes: obj['votes']
  );
}
