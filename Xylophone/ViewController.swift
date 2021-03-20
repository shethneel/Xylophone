import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /* Here, we will connect all the seven buttons with one  IBAction so that we don't need to write code seven times */
   
    @IBAction func keyPressed(_ sender: UIButton) {
        
        /* For opacity */
      
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              sender.alpha = 1.0
          }
        
        /* To play sound */
        
        playSound(soundname: sender.currentTitle!)
    }
    
    func playSound(soundname:String) {
        let url = Bundle.main.url(forResource: soundname, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

