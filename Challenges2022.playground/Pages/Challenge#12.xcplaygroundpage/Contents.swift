/*:

 
&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 12: Is it a palindrome?

 Create a function that receives a string and returns a boolean, true if the given string is a palindrome, false otherwise.
    * Palindrome is a word or phrase that it's the same if read from right to left or in inverse order.
    * Discard spaces, punctuation signs and acentuation.
 
 Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.
  * Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.
  * NO se tienen en cuenta los espacios, signos de puntuación y tildes.
 */

import Foundation

func isPalindrome(_ str: String) -> Bool {
    // process given string
    let processedString = str
        .lowercased()
        .replacingOccurrences(of: " ", with: "")
        .replacingOccurrences(of: ".", with: "")
        .replacingOccurrences(of: ",", with: "")
        .replacingOccurrences(of: ";", with: "")
        .replacingOccurrences(of: "á", with: "a")
        .replacingOccurrences(of: "é", with: "e")
        .replacingOccurrences(of: "í", with: "i")
        .replacingOccurrences(of: "ó", with: "o")
        .replacingOccurrences(of: "ú", with: "u")
    
    return String(processedString) == String(processedString.reversed())
}

func isPalindromeRegExp(_ str: String) -> Bool {
    // process given string
    let punctuationSearch = try! Regex("[^a-z0-9]")
    
    let processedString = str
        .lowercased()
        .folding(options: .diacriticInsensitive, locale: .current) // Removes acentuation
        .replacing(punctuationSearch) { _ in "" } // Removes punctuation
    return String(processedString) == String(processedString.reversed())
}

print("""
    Test 1:
    Ana lleva al oso la avellana.
    Result: \(isPalindrome("Ana lleva al oso la avellana."))
    Result RegExp: \(isPalindromeRegExp("Ana lleva al oso la avellana."))

""")
print("""
    Test 2:
    Adivina ya te opina, ya ni miles origina, ya ni cetro me domina, ya ni monarcas, a repaso ni mulato carreta, acaso nicotina, ya ni cita vecino, anima cocina, pedazo gallina, cedazo terso nos retoza de canilla goza, de pánico camina, ónice vaticina, ya ni tocino saca, a terracota luminosa pera, sacra nómina y ánimo de mortecina, ya ni giros elimina, ya ni poeta, ya ni vida
    Result: \(isPalindrome("Adivina ya te opina, ya ni miles origina, ya ni cetro me domina, ya ni monarcas, a repaso ni mulato carreta, acaso nicotina, ya ni cita vecino, anima cocina, pedazo gallina, cedazo terso nos retoza de canilla goza, de pánico camina, ónice vaticina, ya ni tocino saca, a terracota luminosa pera, sacra nómina y ánimo de mortecina, ya ni giros elimina, ya ni poeta, ya ni vida"))
    Result RegExp: \(isPalindromeRegExp("Adivina ya te opina, ya ni miles origina, ya ni cetro me domina, ya ni monarcas, a repaso ni mulato carreta, acaso nicotina, ya ni cita vecino, anima cocina, pedazo gallina, cedazo terso nos retoza de canilla goza, de pánico camina, ónice vaticina, ya ni tocino saca, a terracota luminosa pera, sacra nómina y ánimo de mortecina, ya ni giros elimina, ya ni poeta, ya ni vida"))

""")
print("""
    Test 3: 
    ¿Qué os ha parecido el reto?
    Result: \(isPalindrome("¿Qué os ha parecido el reto?"))
    Result RegExp: \(isPalindromeRegExp("¿Qué os ha parecido el reto?"))

""")
//: [Next](@next)
