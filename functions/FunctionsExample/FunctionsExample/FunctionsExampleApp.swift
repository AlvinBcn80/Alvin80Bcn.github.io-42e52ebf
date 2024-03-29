//
//  Copyright 2022 Google LLC
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import SwiftUI
import Firebase
import FirebaseFunctionsSwift

@main
struct FunctionsExampleApp: App {
  init() {
    FirebaseApp.configure()
    // Add `-D EMULATOR` to the `Other Swift Flags` under the `Build Settings`
    // to run on an emulator. Learn more from the README.md under the
    // `functions` dir of the Quickstart repo.
    #if EMULATOR
      Functions.functions().useEmulator(withHost: "localhost", port: 5001)
    #endif
  }

  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
