import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!

    let quiz = [
        Question(ques:"4 + 2 = 6", ans:"True"),
        Question(ques:"3 + 5 = 8", ans:"True"),
        Question(ques:"5 - 8 = 3", ans:"False")
    ]
    var quesNumber = -1;
    var score = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI();
    }

    @IBAction func answerButton(_ sender: UIButton) {
        if (sender.currentTitle == quiz[quesNumber].ans){
            score+=1
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(quesNumber+1)/Float(quiz.count)
        if(quesNumber+1<quiz.count){
            quesNumber+=1;
            questionLabel.text = quiz[quesNumber].ques;
        }
        else{
            questionLabel.text = "Your score was " + String(score) + "/" +  String(quiz.count);
        }
    }
}

