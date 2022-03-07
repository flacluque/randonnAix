// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/rando_page.dart';

//import 'package:google_fonts/google_fonts.dart';

//video : 28:10

const d_green = Color(0xFF54D3C2);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Rando', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.green,
          toolbarHeight: 85,
          title: Text(
            'Randonnées près d\'Aix-en-Provence',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: RandoSection(),
        ));
  }
}

class RandoSection extends StatelessWidget {
  final List dataList = [
    {
      'title': 'Sainte-Victoire la Croix de Provence',
      'image': 'images/saintVictoire.jpg',
      'level': 'Moyen',
      'description':
          "\nDepart du parking des Cabassoles, un peu avant Vauvenargues\n\n(D/A) Prendre la direction le prieuré (GR®9) par le sentier des Venturiers, très bien marqué, pas de possibilité de se tromper ! Compter 1h30 de montée\n\n(1) Une fois au Prieuré La Sainte-Victoire , faire une visite et admirer le paysage, ensuite monter à la Croix de Provence, vue panoramique jusqu'à Marseille et la mer si le temps n'est pas trop brumeux.\n\n(2) Ensuite continuer par les crêtes jusqu'au signal, toujours sur le GR®9, ensuite atteindre le Col Subéroque en frôlant parfois les falaises abruptes.\n\n(3) Au Col de Subéroque prendre le sentier à gauche descendant très raide (marques vertes) il s'agit du Sentier des Plaideurs.\n\nLa descente est vraiment très cassante, beaucoup de roches, gare aux genoux, en fait c'est la plus grosse difficulté à mon avis !\n\nEn arrivant en bas suivre toujours le balisage vert!\n\n(4) Avant d'arriver à la rivière L'Infernet, prendre un petit sentier à gauche 50m après un tas de bois.\n\nRejoindre ensuite une piste après avoir traversé la rivière suivre un tracé jaune.\n\n(5) Partir à gauche jusqu'au parking (D/A)."
    },
    {
      'title': 'Le Moulin Cézanne et le Barrage Zola',
      'image': 'images/moulinCezanne.jpg',
      'level': 'Facile',
      'description':
          "\n(D/A) Du parking, s’engager à droite sur la D17 (Route Cézanne) et, à la fourche, rester sur la route de gauche jusqu’au Moulin Cézanne. Tourner à gauche, passer devant le moulin. Au niveau du cimetière, laisser la route partant à droite et à gauche et continuer en face sur le Chemin de Doudon. Au portail tourner à gauche, franchir la barrière et parcourir environ 210m.\n\n(1) Partir à gauche sur le chemin pas très visible (pointillés Jaunes sur une pierre) qui grimpe à travers les rochers, puis redescend pour rejoindre une piste que vous prenez à gauche. Descendre par cette piste (balisage Rouge) jusqu’aux ruines de l’ancien aqueduc romain et de sa petite cascade.\n\n(2) Traverser le cours d’eau, remonter en face le sentier en lacets, passer derrière le Château du Tholonet et arriver à une intersection. Descendre par les escaliers sur la petite route située au-dessous (panneaux information).\n\n(3) Tourner à droite (balisage Vert). A l’intersection suivante, prendre à droite en franchissant la barrière et poursuivre plein Nord sur une forte pente jusqu’à l’intersection suivante.\n\n(4) Continuer dans la même direction (toujours le balisage Vert) sur la piste qui vire à gauche peu après et qui descend vers la maison forestière (table de pique-nique) et le barrage Zola.\n\n(5) Traverser le barrage, remonter le long de la barrière de protection et poursuivre sur la piste qui part à droite vers le Sud. Lorsqu’elle s’oriente à gauche vers l’Est, repérer en face un sentier entre les barres rocheuses (pointillés Verts).\n\n(6) Le sentier descend, rejoint une piste que vous suivez à gauche jusqu'à l'intersection suivante.\n\n(7). Tourner à droite (balisage Jaune). Passer devant l’Aqueduc de Doudon. Descendre le sentier à droite, vers l’Ouest. Il s’élargit plus loin pour rejoindre le point (1).\n\n(1) Revenir au point de départ par le chemin pris à l’aller."
    },
    {
      'title': 'Boucle du Lac Bimont',
      'image': 'images/lacBimont.jpg',
      'level': 'Difficile',
      'description':
          "\n(D/A) Allez jusqu'au bout du parking et passez les deux bornes escamotables qui empêchent le passage des véhicules. Passez sur le pont en béton puis prenez la petite passerelle en bois à droite pour traverser la grande prairie vers le Nord-Est. Profitez de la vue sur la Montagne Sainte-Victoire. Rejoignez le bout de la prairie, traversez sur le pont.\n\n(1) Prenez la piste à droite montante marquée de traits Verts et le GR® 653A : ce carrefour est commun au retour.\n\nMontez par la piste. Dans le virage en épingle à droite, prenez tout droit le sentier qui garde la direction Est. C'est un raccourci qui rejoint la piste un peu plus loin.\n\n(2) Poursuivez vers l'Est sur la piste qui vous mène près du Hameau du Trou et du Refuge Cézanne. Laissez-les à droite et dirigez-vous vers le Nord.\n\n(3) Quittez la piste, prenez le sentier qui serpente entre les murets d'anciennes terrasses. Au passage de la crête, observez la roche nommée Le Baiser. Suivez le sentier montant dans des rocs nommés Pas du Dinosaure. Rejoignez un carrefour de sentiers.\n\n(4) (546m) Prenez à droite le sentier noté Difficile et marqué de traits Rouges. Atteignez rapidement le Pas du Berger. C'est une dalle assez verticale d'environ 5m qui s'escalade par la gauche puis vers la droite (bonnes prises à droite). Ensuite, le sentier est raide, il s'oriente à droite après un ressaut, puis à gauche dans des dalles. Bien suivre les balises jusqu'au Pas du Moine où vous atteignez le sentier Imoucha.\n\n(5) (767m) Découvrez ici le versant Nord de la montagne. Rejoignez le mur au-dessus de vous. Au lieu de suivre le balisage Bleu, partez à gauche, plein Est, longez le mur par le côté inférieur puis supérieur jusqu’à retrouver le sentier balisé Blanc-Rouge, c'est le GR® 9, Chemin des Venturiers.\n\n(6) Descendez ce sentier qui devient une piste pour les secours. La descente est raide jusqu'à un virage en épingle à droite.\n\n(7) (370 m) Prenez le sentier de gauche non balisé, en quittant ici le GR®9, légèrement montant au début, en sous-bois. Puis ce sentier descend, passe en bord de champ, longe la rivière appelée la Cause. Suivez la rivière et traversez-la deux fois. Vous suivez maintenant une piste rive gauche. Quittez-la en obliquant vers le Nord pour entrer dans le terrain laissé libre lors de la vidange du lac.\n\n(8) Traversez sur le pont en ruine. Poursuivez au centre du lac vide pour rejoindre des gorges.\n\n(9) Le paysage s'ouvre sur un vaste espace surplombé par le barrage. Deux poteaux sont restés là depuis la mise en eau de la retenue. Passez près du poteau métallique et continuez Sud-Ouest. Remontez vers la berge car, si vous restez au fond jusqu'au barrage, vous ne pourrez plus remonter à cause de falaises instables.\n\n(10) Suivez la limite de la végétation vers le Sud et redescendez dès que possible dans le fond du vallon asséché. Remontez-le par le fond. En limite de végétation, prenez le sentier montant non balisé.\n\n(11) Traversez le Sentier Imoucha (351m) et continuez à monter vers le Sud-Sud-Est. Vous êtes dans le Vallon de la Dispute.\n\nVous arrivez sur une piste plutôt horizontale. Prenez à droite, plein Ouest. Cinq minutes plus tard, la piste descend.\n\n(12) Tournez à gauche et prenez une piste qui descend, vous verrez quelques points Verts et les balises du GR® 653A. Arrivé en bas d'une piste en béton, vous êtes dans un ancien champ de tir dont la partie Est est parfois interdite (275m). Traversez-le vers le Sud en empruntant le sentier qui est un peu à gauche par rapport à l'axe de la piste précédente. Longez le ruisseau jusqu'au carrefour initial.\n\n(1) Contournez la prairie par la gauche le long du ruisseau par un sentier, pour rejoindre le parking. (D/A)."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Column(
            children: dataList.map((rando) {
              return RandoCard(rando);
            }).toList(),
          )
        ],
      ),
    );
  }
}

class RandoCard extends StatelessWidget {
  final Map randoData;
  RandoCard(this.randoData);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RandoPage(randoData['image'], randoData['description'],
                      randoData['title']);
                }));
              },
              child: Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  image: DecorationImage(
                    image: AssetImage(randoData['image']),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 5,
                      right: -15,
                      child: MaterialButton(
                        color: Colors.white,
                        shape: CircleBorder(),
                        onPressed: () {},
                        child: Icon(Icons.favorite_outline_rounded,
                            color: d_green, size: 20),
                      ),
                    ),
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  randoData['title'],
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  randoData['level'],
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
