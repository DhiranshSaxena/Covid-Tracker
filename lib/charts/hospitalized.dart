class Hospitalized {
  final int Cases;
  final int Recovered;
  final String Date;

  Hospitalized(this.Cases,this.Recovered, this.Date);

  Hospitalized.fromMap(Map<String, dynamic> map)
      : assert(map['Recovered'] != null),
        assert(map['Cases'] != null),
        assert(map['Date'] != null),
        Recovered = map['Recovered'],
        Cases = map['Cases'],
        Date = map['Date'];

  @override
  String toString() => "Record<$Recovered:$Cases:$Date>";
}