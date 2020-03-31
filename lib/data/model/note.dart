class Note {
  final int confirmed;
  final int deaths;
  final int hospitalized;
  final int intensive;
  final int recovered;
  final String id;

  Note({this.confirmed, this.deaths, this.hospitalized, this.intensive, this.recovered, this.id});

  Note.fromMap(Map<String,dynamic> data, String id):
        confirmed=data["Confirmed"],
        deaths=data['Deaths'],
        hospitalized = data['Hospitalized'],
        intensive = data['Intensive'],
        recovered = data['Recovered'],
        id = id;

  Map<String, dynamic> toMap() {
    return {
      "Confirmed" : confirmed,
      "Deaths":deaths,
      "Hospitalized":hospitalized,
      "Intensive":intensive,
      "Recovered":recovered,
      id:id
    };
  }

}