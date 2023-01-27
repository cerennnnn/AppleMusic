//
//  Music.swift
//  AppleMusicDesign
//
//  Created by Ceren Güneş on 26.01.2023.
//

import Foundation

class Music {
    var imageName: String?
    var title: String?
    var subtitle: String?
    var info: String?
    
    init(imageName: String? , title: String? , subtitle: String? , info: String? ) {
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
        self.info = info
    }
}
