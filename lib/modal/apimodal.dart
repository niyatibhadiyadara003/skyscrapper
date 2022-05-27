class Peopleapi {
  String gender;
  String title;
  String first;
  String last;
  int streetno;
  String streetname;
  String city;
  String country;
  String state;
  int postcode;
  String email;
  int age;
  String dob;
  String phone;
  String cell;

  Peopleapi({
    required this.first,
     required this.age,
     required this.cell,
     required this.city,
     required this.country,
     required this.dob,
     required this.email,
     required this.gender,
     required this.last,
     required this.phone,
     required this.postcode,
     required this.state,
     required this.streetname,
     required this.streetno,
     required this.title,
  });


  factory Peopleapi.fromJson(Map<String,dynamic> json) {
   return Peopleapi(
   first: json['results'][0]['name']['first'],
   age: json['results'][0]['dob']['age'],
  cell: json['results'][0]['cell'],
  city:  json['results'][0]['location']['city'],
  country: json['results'][0]['location']['country'],
  dob: json['results'][0]['dob']['date'],
  email: json['results'][0]['email'],
  gender: json['results'][0]['gender'],
  last: json['results'][0]['name']['last'],
  phone: json['results'][0]['phone'],
  postcode: json['results'][0]['location']['postcode'],
  state: json['results'][0]['location']['state'],
     streetname: json['results'][0]['location']['street']['name'],
  streetno: json['results'][0]['location']['street']['number'],
  title: json['results'][0]['name']['title'],
  );
  }
}
