import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!

    var quizBrain = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI();
    }

    @IBAction func answerButton(_ sender: UIButton) {
        if(quizBrain.checkAns(title: sender.currentTitle!)){sender.backgroundColor = UIColor.green;}
        else{sender.backgroundColor = UIColor.red}
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        questionLabel.text = quizBrain.getQues()
    }
}

