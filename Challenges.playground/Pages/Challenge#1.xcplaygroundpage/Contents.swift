/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 1: Anagrams

 Write a function that has two words as parameters (String) and returns true or false (Bool) if these words are anagrams.
 * An anagram consists in get a different word reordering ALL characters from the initial one.
 * It's not necessary to chek if these words really exists.
 * Two exact words are not anagrams.
*/

func areAnagrams(first: String, second: String) -> Bool {
    var result = false
    
    if first.lowercased() != second.lowercased()
        && first.lowercased().sorted().elementsEqual(second.lowercased().sorted()) {
        result = true
    }
    
    return result
}

print(areAnagrams(first: "cala", second: "laca"))
print(areAnagrams(first: "cala", second: "cala"))
print(areAnagrams(first: "amor", second: "roma"))
print(areAnagrams(first: "amor", second: "romar"))

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
