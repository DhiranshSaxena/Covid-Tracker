class Task {
  final int Cases;
  final String Nationality;
  final String Color;

  Task(this.Nationality,this.Cases, this.Color);

  Task.fromMap(Map<String, dynamic> map)
      : assert(map['Nationality'] != null),
        assert(map['Cases'] != null),
        assert(map['Color'] != null),
        Nationality = map['Nationality'],
        Cases = map['Cases'],
        Color = map['Color'];

  @override
  String toString() => "Record<$Nationality:$Cases:$Color>";
}