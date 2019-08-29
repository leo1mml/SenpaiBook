import UIKit
@testable import SenpaiBook

class DataTaskMockImageData: DataTask {
    
    var hasCalledGetData = false
    
    func getData(from url: URL, _ handler: (Result<Data, Error>) -> Void) {
        hasCalledGetData = true
        let image = UIImage(named: "default-teste")!
        let imageData = image.pngData() ?? image.jpegData(compressionQuality: 1.0)!
        handler(.success(imageData))
    }
}
