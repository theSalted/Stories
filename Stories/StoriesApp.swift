//
//  StoriesApp.swift
//  Stories
//
//  Created by 陈宇昊 on 11/12/21.
//

import SwiftUI

@main
struct StoriesApp: App {
    var body: some Scene {
        WindowGroup {
            let placeHolder = DemoScene(imageUrl: URL(string: "https://cdn.glitch.me/ebb52cd5-a6f1-4e8c-9685-d7d937b3948c%2F%231-balcony.jpeg?v=1636470960433"), caption: "Cat stand on the balcony. And cat want to go outside.", choices: ["left balcony", "take nap"])
            StorySceneView(sceneData: placeHolder)
        }
    }
}
