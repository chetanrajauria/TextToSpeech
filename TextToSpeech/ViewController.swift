//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Yashwant Kumar on 16/03/18.
//  Copyright © 2018 Yashwant. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string:"")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textToSpeech(_ sender: Any) {
        
        myUtterance = AVSpeechUtterance(string:textView.text)
        myUtterance.rate = 0.3
        synth.speak(myUtterance)

    }
    
}

