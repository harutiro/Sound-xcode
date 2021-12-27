//
//  ViewController.swift
//  Sound
//
//  Created by Owner on 2021/12/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//　〜〜〜pianoButton
//    imageの取得
    @IBOutlet var pianoButton: UIButton!
//    音楽再生インスタンス作成
    let pianoSoundPlayer = try! AVAudioPlayer(data:NSDataAsset(name:"pianoSound")!.data)
//    タッチした時
    @IBAction func touchDownPianoButton(){
        
        pianoButton.setImage(UIImage(named:"pianoPlayingImage"), for: .normal)
    
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
    }
//    放した時
    @IBAction func touchUpPianoButton(){
        pianoButton.setImage(UIImage(named:"pianoImage"),for: .normal)
    }
    
//　〜〜〜GuiterButton
//    imageの取得
    @IBOutlet var guitarButton: UIButton!
//    音楽再生インスタンス作成
    let guitarSoundPlayer = try! AVAudioPlayer(data:NSDataAsset(name:"guitarSound")!.data)
//    タッチした時
    @IBAction func touchDownGuitarButton(){
    
        guitarButton.setImage(UIImage(named:"guitarPlayingImage"), for: .normal)
    
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
    }
//    放した時
    @IBAction func touchUpGuitarButton(){
        guitarButton.setImage(UIImage(named:"guitarImage"),for: .normal)
    }
    
    
//    〜〜〜drumButton
//    imageの取得
    @IBOutlet var drumButton: UIButton!
//    音楽再生インスタンス作成
    let drumSoundPlayer = try! AVAudioPlayer(data:NSDataAsset(name:"drumSound")!.data)
//    タッチした時
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named:"drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }
//    放した時
    @IBAction func touchUpDrumButton(){
        drumButton.setImage(UIImage(named:"drumImage"),for: .normal)
    }


}

