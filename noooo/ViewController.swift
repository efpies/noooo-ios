import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    @IBOutlet var nooooButton : UIButton;
    
    var player : AVAudioPlayer = AVAudioPlayer(contentsOfURL: NSBundle.mainBundle().URLForResource("noooo", withExtension: "mp3", subdirectory: ""), error: nil);

    init(coder aDecoder: NSCoder!)  {
        super.init(coder: aDecoder);
        
        player.delegate = self;
        player.prepareToPlay();
    }

    @IBAction
    func playNooo() {
        player.play();
        showButtonState(true);
    }
    
    func showButtonState(selected : Bool) {
        nooooButton.selected = selected;
        nooooButton.userInteractionEnabled = !selected;
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        showButtonState(false);
    }
}
