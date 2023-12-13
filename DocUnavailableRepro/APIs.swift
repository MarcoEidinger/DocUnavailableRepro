import Foundation
import UIKit

/// API to be used everywhere
public class UniversalApi {
    public init() {}
}


@available(iOS 15.0, *)
@available(iOSApplicationExtension, unavailable)
/// API to be used in app but not in extension
public class MyApi {
    public init() {
        if UIApplication.shared.canOpenURL(URL(string: "https://www.apple.com")!) {
            print("Running in app as UIApplication.shared is not available for extensions")
        }
    }
}

