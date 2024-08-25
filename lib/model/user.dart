class User {
  String urlPhoto;
  String name;
  int? idade;

  User({
    required this.name,
    this.idade,
    required this.urlPhoto,
  });
}


List<User> users = [
  User(
      name: "Ella",
      idade: 69,
      urlPhoto:
      "https://i.pinimg.com/736x/ee/ab/58/eeab58a82ccf41f5c12419ec08ada5eb.jpg"),
  User(
      name: "Jane",
      idade: 45,
      urlPhoto:
      "https://i.pinimg.com/550x/12/5f/25/125f257bb2d4a01999e11134b554f6a4.jpg"),
  User(
      name: "Luzia",
      idade: 25,
      urlPhoto:
      "https://www.dicasdemulher.com/wp-content/uploads/2019/06/legenda-para-foto-de-perfil.jpg"),
  User(
      name: "Maria",
      idade: 65,
      urlPhoto:
      "https://i.pinimg.com/736x/51/61/5f/51615fb470ab31cfef04f325252bb0d7.jpg"),
  User(
      name: "Fernanda",
      idade: 25,
      urlPhoto:
      "https://i.pinimg.com/736x/9c/9e/b0/9c9eb0654aed1d155ee6de3adf74657c.jpg"),

  User(
      name: "Viviane",
      idade: 26,
      urlPhoto:
      "https://pm1.aminoapps.com/6847/253a82cd97983a411c2f047d044eb2c4c9024514v2_hq.jpg"),
  User(
      name: "Carla",
      idade: 26,
      urlPhoto:
      "https://cloudfront-us-east-1.images.arcpublishing.com/newr7/INEQVBAUJVJJRGQFQTLLZQTGPQ.jpg"),
  User(
      name: "Julia",
      idade: 26,
      urlPhoto:
      "https://i.pinimg.com/236x/e6/6e/6c/e66e6cf42322bf54b608ea6986049482.jpg"),
  User(
      name: "Jessica",
      idade: 22,
      urlPhoto:
      "https://i.pinimg.com/736x/51/52/ff/5152ff5e1e6a0df7471bc95483a18942.jpg"),
];

