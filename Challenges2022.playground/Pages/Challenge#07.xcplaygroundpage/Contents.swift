/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 7: Word counter

 Create a program that count appearances of each word in a given text. It will returns all the words with the number of times it appears in the text.
 * Punctuation marks are not part of a word.
 * The counter should be case insensitive.
 * Do not use System functions that make it automatically.

*/

extension String {
    func countWords() -> [String: Int] {
        var dictionary: [String: Int] = [:]
        var regexp = /\w+/
        let ranges = self.ranges(of: regexp)
        for range in ranges {
            let word = String(describing:self[range]).lowercased()
            dictionary[word] = (dictionary[word] != nil) ? (dictionary[word]! + 1) : 1
        }
        return dictionary
    }
}

let words = """
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut felis ac nisi molestie consectetur eget ac mi. Aliquam condimentum est a placerat laoreet. Sed placerat convallis elit, non pharetra sem posuere nec. Aliquam eu suscipit arcu, eu pretium mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat tortor eu imperdiet sagittis. Vestibulum ornare ut justo sed ultricies. Integer a lectus sit amet lectus tempus ornare nec quis orci. Quisque a porta urna. Integer a aliquam nunc, in tincidunt odio. Donec commodo mauris ex, et gravida sapien consequat eu. Quisque purus enim, imperdiet in sagittis nec, mattis id sapien. Pellentesque arcu leo, fringilla non porttitor vel, aliquam eget massa. Aenean et ante id nulla elementum imperdiet. Praesent imperdiet, leo non pellentesque rhoncus, leo quam mollis velit, molestie fringilla neque orci ut augue.
    """.countWords()

words.forEach { word, times in
    print("\(word) appears \(times == 1 ? "once" : (times == 2) ? "twice" : "\(times) times") in the text")
}

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
