import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(WhisperkitTranscriberPlugin)
public class WhisperkitTranscriberPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "WhisperkitTranscriberPlugin"
    public let jsName = "WhisperkitTranscriber"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = WhisperkitTranscriber()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
