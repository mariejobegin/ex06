import 'package:ex06/fcns.dart';

ex6_1() {
  print('Ex. 6.1');
  List<String> palindromes = ["Kayak", "Hello World", "Engage le jeu que je le gagne"];
  String resultat;

  Iterator<String> i = palindromes.iterator;
  while (i.moveNext()) {
      resultat = "'" + i.current + "'";
      
      if (estPalindrome(i.current))
        resultat += " est ";
      else
        resultat += " n'est pas ";
  
      print(resultat + "un palindrome.");      
  }
  print('');
}

ex6_2() {
  print('Ex. 6.2');
  DateTime date1 = new DateTime(2014,1,1);
  DateTime date2 = new DateTime(2013,1,1);
  
  print('Nombre de jours de différence entre le $date1 et $date2 : ${nombreJours(date1,date2)} jours.');
  
  print('');
}

ex6_3() {
  print('Ex. 6.3');
  
  List<double> notes = [95.0, 65.5, 25.0, 82.0];

  Iterator<double> i = notes.iterator;
  
  while (i.moveNext()) {
    print('La note ${i.current} équivaut à la cote \'${obtenirCote(i.current)}\'.');
  }
  
  print('');
}

ex6_4() {
  List<String> noms = ['Marie-Jo','Dzenan', 'Robert', 'Sébastien','Julie', 'Marc', 'Valentin', 'Jean-Philippe'];
  List<List> nomsSeparer;
  Iterator<String> i;
  
  nomsSeparer = sepererNoms(noms);
  
  print('Ex. 6.4');
  
  i = nomsSeparer[0].iterator;
  print('Liste des noms courts (7 charactères et moins):');
  while (i.moveNext()) {
      print('- ${i.current}');
  }
  
  i = nomsSeparer[1].iterator;
  print('Liste des noms moyens (8 charactère):');
  while (i.moveNext()) {
      print('- ${i.current}');
  }
    
  i = nomsSeparer[2].iterator;
  print('Liste des noms longs (plus de 8 charactères):');
  while (i.moveNext()) {
      print('- ${i.current}');
  }
  
  print('');
}

ex6_5() {
  Map nomJoueurs =
    {'Patrice Bergeron' : 'Bruins',
     'Jeff Carter' : 'Kings',
     'Pavel Datsyuk' : 'Red Wings',
     'Zdeno Chara' : 'Bruins',
     'Christian Ehrhoff' : 'Penguins',
     'Anze Kopitar' : 'Kings',
     'Kristopher Letang' : 'Penguins',
     'Jonathan Quick' : 'Kings',
     'Henrik Zetterberg' : 'Red Wings',
     'P.K. Subban' : 'Canadiens'};
  
  List<String> equipes = ['Bruins', 'Kings', 'Red Wings', 'Penguins', 'Canadiens'];
  Map<String, List<String>> listeEquipes;
  Iterator<String> equipe, joueur;
  
  listeEquipes = creerListeEquipes(nomJoueurs, equipes);
  
  print('Ex. 6.5');
  
  equipe = listeEquipes.keys.iterator;
  while (equipe.moveNext()) {
    print('Liste des joueurs de l\'équipe des ${equipe.current}:');
    
    joueur = listeEquipes[equipe.current].iterator;
    while (joueur.moveNext()) {
          print('- ${joueur.current}');
    }
  }
      
}

void main() {
  
  print('');
  
  // Question 1
  ex6_1();
  
  // Question 2
  ex6_2();
  
  //Question 3
  ex6_3();
  
  //Question 4
  ex6_4();
  
  //Question 5
  ex6_5();
}
