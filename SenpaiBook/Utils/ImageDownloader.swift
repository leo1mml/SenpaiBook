import SwiftUI

class ImageDownloader {
    
    var storedImage: Image
    
    init(url: String, defaultImageName: String = "default") {
        self.storedImage = Image(defaultImageName)
        if let url = URL(string: url) {
            downloadImage(from: url)
        }
    }
    
    private func downloadImage(from url: URL) {
        
    }
}
