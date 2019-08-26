import Foundation
import SwiftUI
import Combine
import Quick
import Nimble
@testable import SenpaiBook

class ImageDownloaderSpec: QuickSpec {
    override func spec() {
        describe("ImageDownloader") {
            var sut: ImageDownloader?
            
            context("when it has no url") {
                it("should return the default image") {
                    sut = ImageDownloader(url: "")
                    expect(sut?.storedImage).to(equal(Image("default")))
                }
            }
            context("when it has a url") {
                it("should call downloadImage") {
                    
                }
            }
        }
    }
}
