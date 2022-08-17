//
//  VideosDetailsView.swift
//  SwiftUI-List-Starter
//
//  Created by Rain Moustfa on 16/08/2022.
//

import SwiftUI

struct VideosDetailsView: View {
    var video:Video
    var body: some View {
        VStack(alignment: .center){
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack(alignment: .center,spacing: 25){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)
            Text(video.description)
                .padding()
            Link(destination: video.url){
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct VideosDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        VideosDetailsView(video: VideoList.topTen.first!)
    }
}
