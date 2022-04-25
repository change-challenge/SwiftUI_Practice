//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hojin Jang on 2022/04/23.
//

import SwiftUI

struct LandmarkList: View {
    // @State 무슨 뜻 ?
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    
    // filter이란 함수
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        // 처음보는 문법 : '키패스'라고 한다. id: \.id
        // Landmark에 Identifiable를 추가하니 id: \.id 없어도 된다.
        NavigationView{
            List {
                // $은 무슨 뜻 ?
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favotie Only")
                }
            ForEach(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
        LandmarkList()
            .environmentObject(ModelData())
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//        }
    }
}
