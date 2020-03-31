class Case {
  final int Cases;
  final int Date;

  Case(this.Date,this.Cases);

  Case.fromMap(Map<String, dynamic> map)
      : assert(map['Date'] != null),
        assert(map['Cases'] != null),
        Date = map['Date'],
        Cases = map['Cases'];

  @override
  String toString() => "Record<$Date:$Cases>";
}