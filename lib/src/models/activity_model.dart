class Activity {
  int id;
  String name;
  String date;
  int idStatus;
  String personIncharge;

  Activity({
    this.id,
    this.name,
    this.date,
    this.idStatus,
    this.personIncharge
  });

  Activity.fromJsonMap(Map<String, dynamic> json){
    id        = json["id"];
    name      = json["name"];
    date      = json["credit_id"];
    idStatus  = json["idStatus"];
  }
}
