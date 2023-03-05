class Joueur {
  String? nom;
  int score = 0;

  Joueur(nom);

  void augmentationduscore(score) {
    this.score = this.score + 1;
  }
}
