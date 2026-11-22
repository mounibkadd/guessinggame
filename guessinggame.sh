#!/bin/bash

compter_fichiers() {
  ls -1 | wc -l
}

nb_fichiers=$(compter_fichiers)

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel."

while true
do
  read -p "Votre estimation : " guess

  if ! [[ "$guess" =~ ^[0-9]+$ ]]
  then
    echo "Veuillez entrer un nombre entier."
  elif [ "$guess" -lt "$nb_fichiers" ]
  then
    echo "Trop bas, essayez encore."
  elif [ "$guess" -gt "$nb_fichiers" ]
  then
    echo "Trop élevé, essayez encore."
  else
    echo "Bravo ! Vous avez trouvé le bon nombre : $nb_fichiers fichiers."
    break
  fi
done
