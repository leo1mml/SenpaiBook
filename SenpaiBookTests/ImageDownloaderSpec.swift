import Foundation
import SwiftUI
import Combine
import Quick
import Nimble
@testable import SenpaiBook

class ImageDownloaderSpec: QuickSpec {
    override func spec() {
        describe("ImageDownloader") {
            let sut = ImageDownloader(url: "")
            
            context("when it has no url") {
                it("should return the default image") {
                    expect(sut.storedImage).to(equal(Image("default")))
                }
            }
        }
    }
}
