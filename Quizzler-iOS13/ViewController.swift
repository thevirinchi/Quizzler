import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!

    let quiz = [
        ["4 + 2 = 6", "True"],
        ["3 + 5 = 8", "True"],
        ["5 - 8 = 3", "False"]
    ]
    var quesNumber = -1;
    var score = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI();
    }

    @IBAction func answerButton(_ sender: UIButton) {
        if (sender.currentTitle == quiz[quesNumber][1]){
            score+=1
            updateUI();
        }
        else{
            updateUI();
        }
    }
    
    func updateUI(){
        if(quesNumber+1<quiz.count){
            quesNumber+=1;
            questionLabel.text = quiz[quesNumber][0];
        }
        else{
            questionLabel.text = "Your score was " + String(score) + "/" +  String(quiz.count);
        }
    }
}

