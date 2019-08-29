import SwiftUI
import Combine

class ImageDownloader: ObservableObject {
    
    @Published
    private(set) var storedImage: Image
    
    init(downloadData: ImageDownloadData, dataTask: DataTask, onError: @escaping (Error) -> Void) {
        storedImage = Image(downloadData.defaultImageName)
        if let url = URL(string: downloadData.url) {
            downloadImage(from: url, dataTask: dataTask, onError: onError)
        } else {
            onError(URLError(.badURL))
        }
    }
    
    private func downloadImage(from url: URL, dataTask: DataTask, onError: @escaping (Error) -> Void) {
        dataTask.getData(from: url) { result in
            switch result {
            case let .success(data):
                tryToSetImage(imageData: data, onError: onError)
            case let .failure(error):
                onError(error)
            }
        }
    }
    
    private func tryToSetImage(imageData: Data, onError: (Error) -> Void) {
        do {
            storedImage = try getImageFrom(data: imageData)
        } catch {
            onError(error)
        }
    }

    private func getImageFrom(data: Data) throws -> Image  {
        if let uiImage = UIImage(data: data) {
            return Image(uiImage: uiImage)
        }
        throw ImageError.invalidDataFormat
    }
}