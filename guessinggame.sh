#!/usr/bin/env bash

count_files() {
    ls -1 | wc -l
}

file_count=$(count_files)

echo "Bienvenue !"
echo "Combien de fichiers existent dans le repertoire courant?"

while true
do
    read -p "Entrez votre estimation: " estimation
    
    if [[ $estimation -lt $file_count ]]; then
        echo "Votre estimation est trop basse. Essayez encore une fois."
    elif [[ $estimation -gt $file_count ]]; then
        echo "Votre estimation est trop haute. Essayez encore une fois."
    else
        echo "Félicitations ! Vous avez trouvé le bon nombre."
        break
    fi
done
