import Foundation

@objc public class WhisperkitTranscriber: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
