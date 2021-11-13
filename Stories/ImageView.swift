//
//  ImageView.swift
//  Stories
//
//  Created by 陈宇昊 on 11/13/21.
//

import SwiftUI

struct ImageView: View {
    var imageUrl: URL?
    
    var body: some View {
        AsyncImage(url: imageUrl) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
            } else if phase.error != nil {
                Image(systemName: "exclamationmark.circle")
            } else {
                ZStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(UIColor.systemGray6))
                    ProgressView()
                }
            }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        let placeHolder = DemoScene(imageUrl: URL(string: "https://cdn.glitch.me/ebb52cd5-a6f1-4e8c-9685-d7d937b3948c%2F%231-balcony.jpeg?v=1636470960433"), caption: "Cat stand on the balcony. And cat want to go outside.", choices: ["left balcony", "take nap"])
        
        ImageView(imageUrl: placeHolder.imageUrl)
    }
}
