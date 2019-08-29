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
            let downloadData = ImageDownloadData(url: "")
            let defaultImageName: String = "default"

            describe("init:downloadData:dataTask:onError") {
                beforeEach {
                    let dataTask = DataTaskMockImageData()
                    sut = ImageDownloader(downloadData: downloadData, dataTask: dataTask) { error in }
                }
                context("when it has no url") {
                    it("should return the default image") {
                        let dataTask = DataTaskMockImageData()
                        sut = ImageDownloader(downloadData: downloadData, dataTask: dataTask) { error in }
                        expect(sut?.storedImage).to(equal(Image(defaultImageName)))
                    }
                }
                context("when it has invalid url") {
                    it("has to not call downloadImage") {
                        let downloadData = ImageDownloadData(url: "@ aosdijfaoisd, - asdflas")
                        let dataTask = DataTaskMockImageData()
                        sut = ImageDownloader(downloadData: downloadData, dataTask: dataTask) { error in
                            let error = error as? URLError
                            expect(error).toNot(beNil())
                            expect(error?.code).to(equal(URLError.badURL))
                        }
                        expect(dataTask.hasCalledGetData).to(beFalse())
                        expect(sut?.storedImage).to(equal(Image(defaultImageName)))
                    }
                }
                context("when it has a url") {
                    it("has to call downloadImage") {
                        let downloadData = ImageDownloadData(url: "www.algumacoisa.com/image.png")
                        let dataTask = DataTaskMockImageData()
                        sut = ImageDownloader(downloadData: downloadData, dataTask: dataTask) { error in
                            fail()
                        }
                        expect(dataTask.hasCalledGetData).to(beTrue())
                    }
                }
                
                context("when it downloads an image") {
                    it("has to change image on download") {
                        let expectedImage = Image(defaultImageName)
                        expect(sut?.storedImage).toNot(beNil())
                        expect(sut?.storedImage).toNot(be(expectedImage))
                    }
                }
                
                context("when the data is not an image") {
                    it("has to throw a invalid data error") {
                        let dataTask = DataTaskMockError()
                        let downloadData = ImageDownloadData(url: "www.algumacoisa.com/somethingelse")
                        sut = ImageDownloader(downloadData: downloadData, dataTask: dataTask, onError: { error in
                            let error = error as? ImageError
                            expect(error).toNot(beNil())
                            expect(error?.description).to(equal(ImageError.invalidDataFormat.description))
                        })
                    }
                }
                context("when the request fails") {
                    it("has to throw url bad request error") {
                        let dataTask = DataTaskMockFailingRequest()
                        let downloadData = ImageDownloadData(url: "www.algumacoisa.com/somethingelse")
                        sut = ImageDownloader(downloadData: downloadData, dataTask: dataTask, onError: { error in
                            let error = error as? URLError
                            expect(error).toNot(beNil())
                            expect(error?.code).to(equal(URLError.badServerResponse))
                        })
                    }
                }
            }
        }
    }
}
