//
//  CryptBridge.swift
//  CryptBridge
//
//  Created on 14/04/17.
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.

import Foundation
import CBCommonCrypto

public extension Data {
    public func sha256() -> Data {
        var hash = [UInt8](repeating: 0,  count: Int(CC_SHA256_DIGEST_LENGTH))
        self.withUnsafeBytes {
            _ = CC_SHA256($0, CC_LONG(self.count), &hash)
        }
        return Data(bytes: hash)
    }

    public func toString() -> String {
        let s = String(data: self, encoding: String.Encoding.utf8)
        if let s = s {
            return s
        }
        return ""
    }
}

public extension String {
    public func sha256() -> String? {
        guard let data = self.data(using: String.Encoding.utf8)
            else { return nil }
        let rc = data.sha256().base64EncodedString(options: [])
        return rc
    }
}
