import 'MesFonctions.dart';
import 'deviner.dart';
import 'joueur.dart';

class IHM_debutdejeu {
  static changementdenom() {
    //On récupère le nom du joueur caché
    print("*----------------------------------------*");
    print("*                                        *");
    print("*  Qu'elle est le nom du joueur caché ?  *");
    print("*                                        *");
    print("*----------------------------------------*");
    print("*                                        *");
    String nom = saisirString();
    Joueur participantcache = new Joueur(nom);
    //On récupère le nom du joueur qui cherche
    print("*--------------------------------------------*");
    print("*                                            *");
    print("*--Qu'elle est le nom du joueur qui cherche ?*");
    print("*                                            *");
    print("*--------------------------------------------*");
    print("*                                            *");
    String nomdeux = saisirString();
    Joueur participantcherche = new Joueur(nomdeux);
    //assignement des couleurs
    Deviner liste_de_pions_cacher = new Deviner();
    String couleur1 = liste_de_pions_cacher.changercouleur();
    String couleur2 = liste_de_pions_cacher.changercouleur();
    String couleur3 = liste_de_pions_cacher.changercouleur();
    String couleur4 = liste_de_pions_cacher.changercouleur();

    //Changement de couleur
    liste_de_pions_cacher.setAttributCouleur1(couleur1);
    liste_de_pions_cacher.setAttributCouleur2(couleur2);
    liste_de_pions_cacher.setAttributCouleur3(couleur3);
    liste_de_pions_cacher.setAttributCouleur4(couleur4);

    print("*--------------------------------------------*");
    print("*                                            *");
    print("*    Combien de tours voulez vous jouez ?    *");
    print("*                                            *");
    print("*                                            *");
    print("*--------------------------------------------*");
    int nbrtour = saisirInt();

    for (int i = 0; i < nbrtour; i++) {
      print("*--------------------------------------------*");
      print("*                                            *");
      print("*    Quel couleur voulez-vous mettre ?       *");
      print("*                                            *");
      print("*                                            *");
      print("*--------------------------------------------*");
      Deviner liste_de_pions_recherche = new Deviner();
      //récupère les couleurs
      String couleur5 = liste_de_pions_recherche.changercouleur();
      String couleur6 = liste_de_pions_recherche.changercouleur();
      String couleur7 = liste_de_pions_recherche.changercouleur();
      String couleur8 = liste_de_pions_recherche.changercouleur();
      //Changement de couleurs
      liste_de_pions_recherche.setAttributCouleur1(couleur5);
      liste_de_pions_recherche.setAttributCouleur2(couleur6);
      liste_de_pions_recherche.setAttributCouleur3(couleur7);
      liste_de_pions_recherche.setAttributCouleur4(couleur8);
      String conditionsdevictoire = Deviner.testcombinaisons(couleur1, couleur5,
          couleur2, couleur6, couleur3, couleur7, couleur4, couleur8);
      print(conditionsdevictoire);
    }
    // Test
    // print(liste_de_pions_cacher.Couleur1 +
    //     " " +
    //     liste_de_pions_cacher.Couleur2 +
    //     " " +
    //     liste_de_pions_cacher.Couleur3 +
    //     " " +
    //     liste_de_pions_cacher.Couleur4);
  }
}
