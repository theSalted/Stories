//
//  StoryData.swift
//  Stories
//
//  Created by 陈宇昊 on 11/12/21.
//

import Foundation
import SwiftUI

struct Story : Codable {
    var scenes : Array<SceneData>
}

struct SceneData : Codable {
    var id : String
    var imageUrl : URL
    var caption : String
    var choices : Array<Choice>
}

struct Choice : Codable {
    var text : String
    var id: String
}

struct DemoScene {
    var imageUrl : URL?
    var caption : String
    var choices : Array<String>
}
