library fcns;

// Question 1
bool estPalindrome(String phrase){
  
  String phraseInverse;
  
  phrase = phrase.replaceAll(" ", "").toUpperCase();
  phraseInverse = phrase.split("").reversed.join();
  
  return (phrase == phraseInverse);
  
}

// Question 2
int nombreJours(DateTime date1, DateTime date2) => date1.difference(date2).inDays;

// Question 3
String obtenirCote(double note){
  
  String cote;
  Iterator<double> notesBareme;
  Map bareme =
         {95.0  : 'A+', 
          91.5  : 'A',
          88.0  : 'A-',
          84.5  : 'B+',
          81.0  : 'B',
          77.5  : 'B-',
          74.0  : 'C+',
          70.5  : 'C',
          67.0  : 'C-',
          63.5  : 'D+',
          60.0  : 'D',
          0.0   : 'E'};
 
  notesBareme = bareme.keys.iterator;
  cote = '';
  
  while (notesBareme.moveNext() && cote == '' ) {
    
    if (note >= notesBareme.current)
      cote = bareme[notesBareme.current];
  }
  
  return cote;
}

// Question 4
List<List> sepererNoms(List<String> noms){
  
  List<List> listeNoms;
  List<String> nomsCourt, nomsMoyen, nomsLong;
  
  nomsCourt = new List<String>();
  nomsMoyen = new List<String>();
  nomsLong = new List<String>();
  
  Iterator<String> i = noms.iterator;
  while (i.moveNext()) {
    
    if (i.current.length < 8) nomsCourt.add(i.current);
    else if (i.current.length == 8) nomsMoyen.add(i.current);
    else nomsLong.add(i.current);
      
  }
  
  listeNoms = new List<List>();
  listeNoms.add(nomsCourt);
  listeNoms.add(nomsMoyen);
  listeNoms.add(nomsLong);
  
  return listeNoms;
}

// Question 5
Map<String, List<String>> creerListeEquipes(Map nomsJoueurs, List<String> equipes){
  
  Map<String, List<String>> listeEquipes = new Map();
  List<String> joueurs;
  Iterator<String> equipe,joueur;

  equipes.sort(
        (a, b) {
          return a.compareTo(b);
        }
  );
  
  equipe = equipes.iterator;
  while (equipe.moveNext()) {
    
    joueurs = new List<String>();
    joueur = nomsJoueurs.keys.iterator;
    
    while (joueur.moveNext()) {
        if (equipe.current == nomsJoueurs[joueur.current]){
          joueurs.add(joueur.current);
        }
    }
    
    listeEquipes.putIfAbsent(equipe.current, () => joueurs);
    
  }
  
  return listeEquipes;
  
}

