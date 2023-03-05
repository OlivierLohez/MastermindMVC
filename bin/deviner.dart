import "MesFonctions.dart";

class Deviner {
  String Couleur1 = "";
  String Couleur2 = "";
  String Couleur3 = "";
  String Couleur4 = "";

  Deviner();

  void setAttributCouleur1(String couleur) {
    this.Couleur1 = couleur;
  }

  void setAttributCouleur2(String couleur) {
    this.Couleur2 = couleur;
  }

  void setAttributCouleur3(String couleur) {
    this.Couleur3 = couleur;
  }

  void setAttributCouleur4(String couleur) {
    this.Couleur4 = couleur;
  }

  String changercouleur() {
    String vide = "";
    print("Quel couleur voulez-vous ?");
    print("1 - Jaune");
    print("2 - Bleu");
    print("3 - Rouge");
    print("4 - Vert");
    print("5 - Blanc");
    print("6 - Noir");
    int choix = saisirIntEntredeuxValeurs();
    if (choix == 1) {
      return vide = "Jaune";
    } else if (choix == 2) {
      return vide = "Bleu";
    } else if (choix == 3) {
      return vide = "Rouge";
    } else if (choix == 4) {
      return vide = "Vert";
    } else if (choix == 5) {
      return vide = "Blanc";
    } else {
      return vide = "Noir";
    }
  }

  static String testcombinaisons(
      couleur1cacher,
      couleur1chercheur,
      couleur2cacher,
      couleur2chercheur,
      couleur3cacher,
      couleur3chercheur,
      couleur4cacher,
      couleur4chercheur) {
    int couleurbonne = 0;
    if (couleur1cacher == couleur1chercheur) {
      couleurbonne++;
    }
    if (couleur2cacher == couleur2chercheur) {
      couleurbonne++;
    }
    if (couleur3cacher == couleur3chercheur) {
      couleurbonne++;
    }
    if (couleur4cacher == couleur4chercheur) {
      couleurbonne++;
    }
    if (couleurbonne == 4) {
      print("Gagner");
    }
    return "voila";
  }
}
