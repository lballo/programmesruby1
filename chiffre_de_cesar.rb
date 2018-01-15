


# le chiffrement par décalage.


#Enoncé
# En cryptographie, le chiffrement par décalage, aussi connu comme le chiffre de César ou le code de César (voir les différents noms), 
#est une méthode de chiffrement très simple utilisée par Jules César dans ses correspondances secrètes (ce qui explique le nom « chiffre de César »). 
#Le texte chiffré s'obtient en remplaçant chaque lettre du texte clair original par une lettre à distance fixe, toujours du même côté, 
#dans l'ordre de l'alphabet. Pour les dernières lettres (dans le cas d'un décalage à droite), on reprend au début. 
#Par exemple avec un décalage de 3 vers la droite, A est remplacé par D, B devient E, et ainsi jusqu'à W qui devient Z, puis X devient A etc. 
#Il s'agit d'une permutation circulaire de l'alphabet. La longueur du décalage, 3 dans l'exemple évoqué, constitue la clé du chiffrement 
#qu'il suffit de transmettre au destinataire — s'il sait déjà qu'il s'agit d'un chiffrement de César — pour que celui-ci puisse déchiffrer le message. `
#Dans le cas de l'alphabet latin, le chiffre de César n'a que 26 clés possibles (y compris la clé nulle, qui ne modifie pas le texte).

# Ta mission : créér une méthode chiffre_de_cesar qui prend en paramètre un string et le nombre de lettre à décaler, et sort le string modifié.

# > chiffre_de_cesar("What a string!", 5)
# => "Bmfy f xywnsl!"

#A => B(+1)
#Z => A


#Methodologie
#ABBA: 4 lettres => 65 66 66 65=> décaler les chiffres (+1) => conversion en lettres BCCB 

# 1. ABBA => string => déclarer un string (mot) => mot => array
# ABBA => tableau de lettres allant de a à z => 26 lettres de l'alphabet
# 2. appliquer le programme ASCII => .chars.map(&:ord)
# 3. décaler les chiffres => ajout de +1 
# 4. conversion du tableau en lettres de nouveau

#Methode 1
 ALPHABET_SIZE = 26
 def cesar(string)
 shiftyArray = []
 ascii = "test".chars.map(&:ord) #la méthode chars permet de convertir un string en un tableau de caractères, la méthode map est utilisée pour transformer les valeurs d'une séquence, ord permet l'application de la méthode ASCII
 shifted = ascii.map { |c| c + 6 } #application du nombre de rotation voulues sur le tableau de caractère. 
 result = shifted.map { |c| c.chr }.join #transformation des nombres en lettres => la méthode chr permet d'afficher les lettres et non le code ASCII
 end

 puts cesar("testing")


#Methode 2
 chaine_caractere = "abba" #définition d'une chaine de caractère
 chaine_caractere.each_byte { |carac| #each_byte parser un à un les caractères d'une chaîne
 ascii_sup = carac+1
   puts ascii_sup.chr
}


