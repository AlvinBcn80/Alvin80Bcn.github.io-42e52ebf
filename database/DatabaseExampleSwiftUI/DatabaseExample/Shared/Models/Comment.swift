//
//  Copyright (c) 2021 Google Inc.
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

import Firebase

struct Comment: Identifiable {
  var id: String
  var uid: String
  var author: String
  var text: String

  init(id: String, uid: String, author: String, text: String) {
    self.id = id
    self.uid = uid
    self.author = author
    self.text = text
  }

  init?(id: String, dict: [String: Any]) {
    guard let uid = dict["uid"] as? String else { return nil }
    guard let author = dict["author"] as? String else { return nil }
    guard let text = dict["text"] as? String else { return nil }

    self.id = id
    self.uid = uid
    self.author = author
    self.text = text
  }
}
