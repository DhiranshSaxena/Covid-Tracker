class UTST {
  final int Cases;
  final String State;

  UTST(this.State,this.Cases);

  UTST.fromMap(Map<String, dynamic> map)
      : assert(map['States'] != null),
        assert(map['Cases'] != null),
        State = map['States'],
        Cases = map['Cases'];

  @override
  String toString() => "Record<$State:$Cases>";
}