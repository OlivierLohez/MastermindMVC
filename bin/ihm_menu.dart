import 'MesFonctions.dart';
import 'ihm_debutdejeu.dart';

class IHM_menu {
  static affichagemenu() {
    print("*---------------------------------------*");
    print("                                         ");
    print("      Bienvenue dans le mastermind      *");
    print("                                         ");
    print("      Taper 1 pour lancer la partie     *");
    print("      Taper 0 pour quitter le jeu       *");
    print("                                         ");
    print("*---------------------------------------*");
    int saisiejoueur = saisirInt();
    if (saisiejoueur == 1) {
      IHM_debutdejeu.changementdenom();
    } else if (saisiejoueur == 0) {}
  }
}
