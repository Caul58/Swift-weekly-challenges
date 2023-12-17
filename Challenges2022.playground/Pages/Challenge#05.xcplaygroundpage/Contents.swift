/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 5: Image aspect ratio

 Create a program that calculates the image aspect ratio given by an url.
 * Sample URL:
    https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png
 * By ratio we mean, for instance, "16:9" from an 1920*1080px image.
*/

import AppKit

func primeFactors(of number: Int) -> Array<Int> {
    var num = number
    var factors: [Int] = []
    for divisor in 2 ..< num {
        while num.isMultiple(of: divisor) {
            factors.append(divisor)
            num /= divisor
        }
    }
    return factors
}

func aspectRatio(ofImage url: String) async -> String {
    
    var newHeightReduced: Int = 0
    var newWidthReduced: Int = 0
    
    guard let url = URL(string: url) else {
        return ""
    }
    
    do {
        let (data, _ ) = try await URLSession.shared.data(from: url)
        // For UIKit replace NSImage by UIImage
        guard let image = NSImage(data: data) else {
            print("Non valid image")
            return ""
        }
        let factorizeHeight = primeFactors(of: Int(image.size.height))
        let factorizeWidth = primeFactors(of: Int(image.size.width))
        
        let difference = factorizeHeight.difference(from: factorizeWidth)
        var partialHeight: [Int] = []
        var partialWidth: [Int] = []
        for change in difference {
            switch change {
            case let .remove(_, element, _):
                partialHeight.append(element)
            case let .insert(_, element, _):
                partialWidth.append(element)
            }
        }
        
        newHeightReduced = partialHeight.reduce(1, { partialResult, element in
            partialResult * element
        })
        newWidthReduced = partialWidth.reduce(1, { partialResult, element in
            partialResult * element
        })
        
    } catch {
        print("Error downloading the image")
    }
    
    return "\(String(describing: newHeightReduced)):\(String(describing: newWidthReduced))"
}

Task {
    print("""
    Aspect ratio of this image:
    https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png
    is \(await aspectRatio(ofImage: "https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png"))
    """)
    print("""
    Aspect ratio of this image:
    https://r4.wallpaperflare.com/wallpaper/39/346/426/digital-art-men-city-futuristic-night-hd-wallpaper-01b69d213afe95f35634472bcdf74a70.jpg
    is \(await aspectRatio(ofImage: "https://r4.wallpaperflare.com/wallpaper/39/346/426/digital-art-men-city-futuristic-night-hd-wallpaper-01b69d213afe95f35634472bcdf74a70.jpg"))
    """)
    print("""
    Aspect ratio of this image:
    https://r4.wallpaperflare.com/wallpaper/764/505/66/baby-groot-4k-hd-superheroes-wallpaper-56a4b88b9246d7825647d34a12b4c573.jpg
    is \(await aspectRatio(ofImage: "https://r4.wallpaperflare.com/wallpaper/764/505/66/baby-groot-4k-hd-superheroes-wallpaper-56a4b88b9246d7825647d34a12b4c573.jpg"))
    """)
}

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
