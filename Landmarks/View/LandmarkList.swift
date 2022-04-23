//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hojin Jang on 2022/04/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // 처음보는 문법 : '키패스'라고 한다. 
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
       }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
