import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Pour supprimer le bandeau de debug
      title: 'Application Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(), // La première page affichée
    );
  }
}

// Splash Screen
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "DALAL AK JAMM",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to HomePage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text("Commencer"),
            ),
          ],
        ),
      ),
    );
  }
}

// Page principale avec un menu
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Principal"),
      ),
      body: Center(
        child: Text(
          "Bienvenue dans l'application",
          style: TextStyle(fontSize: 18),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Vente'),
              onTap: () {
                // Ajouter la navigation ou fonctionnalité pour Vente
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.storage),
              title: Text('Stock'),
              onTap: () {
                // Ajouter la navigation ou fonctionnalité pour Stock
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Paramètre'),
              onTap: () {
                // Ajouter la navigation ou fonctionnalité pour Paramètre
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
