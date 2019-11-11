//
//  SongQuery.swift
//  flow
//
//  Created by Alakazam on 11/11/19.
//  Copyright © 2019 esper. All rights reserved.
//

import Foundation
import MediaPlayer





public class songQuery{
    
    public  static func imageToNSString(image:UIImage)->String
    {
        let image = image.pngData() as NSData?
        let strBase64:String = (image?.base64EncodedString())!
        
        return strBase64
    }
    static func getAllSongs(){
        let allSongs = (MPMediaQuery.songs().items)
        
        for song:MPMediaItem in allSongs!{
            let imageSound: MPMediaItemArtwork = (song.value( forProperty: MPMediaItemPropertyArtwork ) as? MPMediaItemArtwork)!
            let image:UIImage = imageSound.image(at: CGSize(width:100,height:100))!
            let base64:String = self.imageToNSString(image: image)
            
        }
        print(allSongs?.count)
    }
    
}


