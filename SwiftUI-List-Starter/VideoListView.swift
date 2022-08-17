//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct VideoListView: View {
    var body: some View {
        let videos = VideoList.topTen
        NavigationView{
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                List(videos, id: \.id){ video in
                    NavigationLink(destination: VideosDetailsView(video: video)){
                        VideoItem(video: video)
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Rery Top 10")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}

struct VideoItem: View {
    var video:Video
    var body: some View {
        ZStack{
            HStack{
                Image(video.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .cornerRadius(4)
                    .padding(.vertical,4)
                VStack(alignment: .leading, spacing: 4){
                    Text(video.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    Text(video.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}
