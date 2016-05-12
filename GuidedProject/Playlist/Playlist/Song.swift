//
//  Song.swift
//  Playlist
//
//  Created by Nathan on 5/11/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import Foundation

class Song: Equatable {
    
    private let titleKey = "title"
    private let artistKey = "artist"
    
    let title: String
    let artist: String
    
    var dictionaryCopy: [String: AnyObject] {
        return [titleKey: title, artistKey: artist]
    }
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
        

    }
    
    init?(dictionary: [String: AnyObject]) {
        guard let title = dictionary[titleKey] as? String,
            let artist = dictionary[titleKey] as? String else {
                return nil
        }
        
        self.title = title
        self.artist = artist
        
    }
}

func ==(lhs: Song, rhs: Song) -> Bool {
    return lhs.title == rhs.title && lhs.artist == rhs.artist
}
