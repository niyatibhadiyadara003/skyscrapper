class Apipracmodal
{
  final int id;
  final String img;

  Apipracmodal({required this.id,required this.img});

  factory Apipracmodal.fromJson(Map<String,dynamic> json)
  {
    return Apipracmodal(
        id: json['id'],
        img: json['largeImageURL'],
    );

  }
}
