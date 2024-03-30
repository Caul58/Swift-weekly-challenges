/*:

 
&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 11: Disjoint Sets

 Create a function that receives two strings (str1, str2) and returns two processed strings (out1, out2) with the following instructions about the process.
    * out1 will contain all characters present in str1 but *not* in str2.
    * out2 will contain all characters present in str2 but *not* in str1.
 
 */

import Foundation

func disjointSets(str1: String, str2: String) -> (out1: String, out2: String) {
    (out1: str1.lowercased().filter({ !str2.lowercased().contains($0) }),
     out2: str2.lowercased().filter({ !str1.lowercased().contains($0) }))
}

print("""

    Original --> str1: brais, str2: moure
    Processed Strings --> \(disjointSets(str1: "brais", str2: "moure"))

""")
print("""

    Original --> str1: Me gusta Objective-C, str2: Me gusta Swift
    Processed Strings --> \(disjointSets(str1: "Me gusta Objective-C", str2: "Me gusta Swift"))

""")
print("""

    Original --> str1: Usa el canal de nuestro discord (https://mouredev.com/discord) \"🔁reto-semanal\" para preguntas, dudas o prestar ayuda a la comunidad., str2: Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
    Processed Strings --> \(disjointSets(str1: "Usa el canal de nuestro discord (https://mouredev.com/discord) \"🔁reto-semanal\" para preguntas, dudas o prestar ayuda a la comunidad.",
               str2: "Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada."))

""")




/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
