class Transmission {
  final int Cases;
  final String Source;
  final String Color;

  Transmission(this.Source,this.Cases,this.Color);

  Transmission.fromMap(Map<String, dynamic> map)
      : assert(map['Source'] != null),
        assert(map['Cases'] != null),
        assert(map['Color'] != null),
        Source = map['Source'],
        Cases = map['Cases'],
        Color = map['Color'];

  @override
  String toString() => "Record<$Source:$Cases:$Color>";
}