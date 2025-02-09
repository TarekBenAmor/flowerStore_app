import 'package:flower_store_app/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar complet avec la zone au-dessus et les actions
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            75.0), // Hauteur combinée pour la zone et l'AppBar
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Aligner les enfants en haut
          crossAxisAlignment: CrossAxisAlignment.stretch, // Étendre en largeur
          children: [
            // Partie au-dessus de l'AppBar (zone contenant les informations comme l'heure, la batterie, etc.)
            Container(
              color: const Color.fromARGB(
                  255, 57, 104, 58), // Changer la couleur de fond ici
              height: 40.0, // La moitié de la hauteur de PreferredSize
            ),
            // Padding autour de l'AppBar avec Expanded pour éviter le débordement
            Expanded(
              child: AppBar(
                toolbarHeight: 40.0, // Définir la hauteur correcte de l'AppBar
                backgroundColor: appbarGreen,
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_shopping_cart,
                        color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      "\$ 104",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: const Center(child: Text("Home Page Content")),
    );
  }
}
