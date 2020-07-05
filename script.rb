def caesar_cipher(sentence, factor)
  alphabet = ('a'..'z').to_a
  new_sentence = ''

  # Pour chaque lettres
  sentence.each_char do |letter|

    # Si elle est dans l'alphabet (et qu'elle est en miniscule)
    if alphabet.index(letter)
      # On récupère sa position
      index = alphabet.index(letter)

      # On calcul la nouvelle position
      index += factor

      # On reviens à A si on dépasse Z
      if index >= 26
        index -= 26
      end

      # On met la nouvelle lettre dans la phrase codée
      new_sentence += alphabet[index].to_s

    # Si elle est dans l'alphabet (et qu'elle est en majuscule)
    elsif alphabet.index(letter.downcase)
      # On récupère sa position
      index = alphabet.index(letter.downcase)

      # On calcul la nouvelle position
      index += factor

      # On reviens à A si on dépasse Z
      if index >= 26
        index -= 26
      end

      # On met la nouvelle lettre dans la phrase codée (en majuscule)
      new_sentence += alphabet[index].to_s.upcase

    # Si elle n'est pas dans l'alphabet (ce n'est pas une lettre)
    else
      # On la met tel quel dans la phrase codée
      new_sentence += letter.to_s
    end
  end

  # On retourne la phrase codée
  new_sentence
end

# Entrées utilisateur
puts "Enter a sentence:"
sentence = gets.chomp
puts "Enter a shift factor:"
factor = gets.chomp.to_i

# Résultat
puts "Result:"
puts caesar_cipher(sentence, factor)
