//
//  PlaylistController.swift
//  Playlist
//
//  Created by Nathan on 5/11/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import Foundation

class PlaylistController {
    
    private let playlistKey = "playlist key"
    
    static let sharedInstance = PlaylistController()
    
    var playlists = [Playlist]()
    
    init() {
        loadFromPersistentStore()
    }
    
    func addPlaylist(name: String) {
        let playlist = Playlist(name: name, songs: [])
        playlists.append(playlist)
        saveToPersistentStore()
    }
    
    func deletePlaylist(playlist: Playlist) {
        guard let indexOfPlaylist = playlists.indexOf(playlist) else {
            return
        }
        playlists.removeAtIndex(indexOfPlaylist)
        saveToPersistentStore()
    }
    
    func addSongToPlaylist(song: Song, playlist: Playlist) {
        playlist.songs.append(song)
        saveToPersistentStore()
    }
    
    func removeSongFromPlaylist(song: Song, playlist: Playlist) {
        guard let indexOfSong = playlist.songs.indexOf(song) else {
            return
        }
        playlist.songs.removeAtIndex(indexOfSong)
        saveToPersistentStore()
    }
    
    func saveToPersistentStore() {
        NSUserDefaults.standardUserDefaults().setObject(playlists.map({$0.dictionaryCopy}), forKey: playlistKey)
    }
    
    func loadFromPersistentStore() {
        guard let playlistDictionaries = NSUserDefaults.standardUserDefaults().objectForKey(playlistKey) as? [[String: AnyObject]] else {
            return
        }
        playlists = playlistDictionaries.flatMap({Playlist(dictionary: $0)})
    }
}