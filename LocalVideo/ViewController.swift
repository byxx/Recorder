//
//  ViewController.swift
//  LocalVideo
//
//  Created by Tim on 28.01.16.
//  Copyright © 2016 Tim. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class ViewController: UIViewController {
    
    
    @IBAction func PlayBTN(sender: AnyObject) {
       
        let playerViewController = AVPlayerViewController()
        var playerView = AVPlayer()
        
        let fileURL = NSURL(fileURLWithPath: "/Users/tim/Documents/App Projekte/tuts/Jared/LocalVideo/LocalVideo/Schnurbel_spricht.mov")
        
        playerView = AVPlayer(URL: fileURL)
        playerViewController.player = playerView
        
        self.presentViewController(playerViewController, animated: true) {
            
            setupRecorder()
            playerViewController.player?.play()
        
        }
    }
    
    @IBAction func RecordSyncBTN(sender: AnyObject) {
        
        //kleine Edits fanden statt
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        
      
    }
        
    

    override func didReceiveMemoryWarning() {
     super.didReceiveMemoryWarning()
        
        }
}

func setupRecorder() {

    let recordSettings : [String : Any] =
    [
        AVFormatIDKey: kAudioFormatMPEG4AAC,
        AVEncoderAudioQualityKey : AVAudioQuality.Max.rawValue,
        AVEncoderBitRateKey : 320000,
        AVNumberOfChannelsKey: 2,
        AVSampleRateKey : 44100.0
    ]
}