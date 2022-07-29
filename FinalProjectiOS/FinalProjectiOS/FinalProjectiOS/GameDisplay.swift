//
//  GameDisplay.swift
//  FinalProjectiOS
//
//  Created by user215685 on 3/2/22.
//

import UIKit

class GameDisplay: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var sceneOneChoices: UIStackView!
    @IBOutlet weak var sceneTwoChoices: UIStackView!
    @IBOutlet weak var sceneThreeChoices: UIStackView!
    @IBOutlet weak var sceneFourChoices: UIStackView!
    @IBOutlet weak var sceneFiveChoices: UIStackView!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var endingButton: UIButton!
    
    var characterSelect = ""
    var characterName = ""
    var score = 0
    var index = 0
    var sceneArray = ["After reading all these lovely poems, I can’t help but feeling…that something is missing in my life", "Oh hello. I’m sorry I didn’t notice you standing there.","That's alright.  It's nice to meet you though.", "Nice to meet you too.", "I overheard you talking about poetry, and it kinda caught my attention.", "Really? Are you also into poetry?","I was actually just on my way back from the library", "They have an amazing assortment of works from famous poets like Kobayashi Issa, Maya Angelou, and William Shakespeare!", "Sounds like you’re really into this kinda thing.  I can see t hat you love it!", "Indeed!  Poetry…has always helped me communicate with others honestly", "Being able to express yourself to others is a talent we don’t all posses lol", "I agree.  How do you express yourself?","Actually…it’s been hard lately to express myself", "Did something happen to get in the way?","The more people I come across…the more alone I feel in my love for writing", "Most people text, use gifs and emoji, comment on social media…people don’t really seem to care anymore", "...", "I never really thought about it like that…things have really changed huh?", "I really miss being able to share…the real me", "Being able to share that with someone…who understands…know what I mean?","It really can take a lot to say what you’re feeling and thinking…", "More than most people tend to think about nowadays", "But, talking to you seems to be affecting my train of thought on all this", "Really?!  I wouldn’t expect that…seeing that we don’t know each other well", "I know that.  I guess it is strange, but I’m trying to bridge a gap that could only ever be filled by words on paper", "It’s hard to know…if that will ever happen", "Talking about all this really helps me realize a lot", "It really has given me a lot to think about too", "I would’ve never guessed this would be something I talked about with someone I just met", "Are you disappointed about that?","You know what?..."]
    var choiceArray = ["It’s a great form of expression", "I never expected to hear it put so eloquently…", "I see, well I guess it’s not for everyone", "Right?! Words are important, so I take care with them", "I admire that…I’m not that good at it though", "Oh, well it’s important to be able to share one’s thoughts and feelings", "…I see…can’t be surprised I guess", "You’re kidding?! You mean…you understand me?", "Thanks…that means a lot", "I really hope so…I appreciate that", "That almost sounds cruel", "...","That hurt more than I thought it might...", "It's comforting to know I could share something special with you", "You really are amazing...more than I could hope for", "You know what?..."]
    
    @IBOutlet weak var characterYuki: UIImageView!
    @IBOutlet weak var characterSayuri: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Check the 'characterSelect' variable to see which character to display:
        if (characterSelect == "male"){
            characterYuki.isHidden = false
        } else if (characterSelect == "female"){
            characterSayuri.isHidden = false
        }
        
        characterName = "???"
        nameLabel.text = characterName
        textLabel.text = "(You're attention is caught by a stranger saying something to himself)"

    }

    @IBAction func nextBtn(_ sender: Any) {
        //Loop through Array of text to display
        for _ in 0...sceneArray.count-1 {
            textLabel.text = sceneArray[index]
        }
        index += 1
        
        if(index == 3){
            characterName = " User"
            nameLabel.text = characterName
        }
        if(index == 4 && characterSelect == "male"){
            characterName = " Yuki"
            nameLabel.text = characterName
        } else if (index == 4 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 5){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 6 && characterSelect == "male"){
            sceneOneChoices.isHidden = false
            nextButton.isEnabled = false
            characterName = " Yuki"
            nameLabel.text = characterName
        } else if (index == 6 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 7 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 7 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 8 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 8 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 9){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 10 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 10 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 11){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 12 && characterSelect == "male"){
            sceneTwoChoices.isHidden = false
            nextButton.isEnabled = false
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 12 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
            sceneTwoChoices.isHidden = false
        }
        if(index == 13 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 13 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 14){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 15 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 15 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 16 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 16 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 17){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 18 ){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 19 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 19 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 20 && characterSelect == "male"){
            sceneThreeChoices.isHidden = false
            nextButton.isEnabled = false
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 20 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
            sceneThreeChoices.isHidden = false
        }
        if(index == 21){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 22 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 22 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 23 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 23 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 24){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 25){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 26 && characterSelect == "male"){
            sceneFourChoices.isHidden = false
            nextButton.isEnabled = false
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 26 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
            sceneFourChoices.isHidden = false
        }
        if(index == 27 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 27 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
        }
        if(index == 28){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 29){
            characterName = "User"
            nameLabel.text = characterName
        }
        if(index == 30 && characterSelect == "male"){
            sceneFiveChoices.isHidden = false
            nextButton.isEnabled = false
            characterName = "Yuki"
            nameLabel.text = characterName
        } else if (index == 30 && characterSelect == "female") {
            characterName = " Sayuri"
            nameLabel.text = characterName
            sceneFiveChoices.isHidden = false
        }
        if(index == 31 && characterSelect == "male"){
            characterName = "Yuki"
            nameLabel.text = characterName
            nextButton.isHidden = true
            endingButton.isHidden = false
        } else if (index == 31 && characterSelect == "female"){
            characterName = "Sayuri"
            nameLabel.text = characterName
            nextButton.isHidden = true
            endingButton.isHidden = false
        }
        

    }
    
    @IBAction func endingBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "toGameEnding", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGameEnding"{
            let destinationVC = segue.destination as? GameEndingDisplay
            destinationVC?.finalScore = score
        }
    }
    
    @IBAction func sceneOneChoicesBtn(_ sender: UIButton) {
        if(sender.titleLabel!.text == "I read some now and then"){
            //add 1 point
            score += 1
            textLabel.text = choiceArray[0]
        } else if (sender.titleLabel!.text == "Poetry is the heart's voice!"){
            //add 3 points
            score += 3
            textLabel.text = choiceArray[1]
        }else{
            //0 points
            textLabel.text = choiceArray[2]
        }
        sceneOneChoices.isHidden = true
        nextButton.isEnabled = true
    }
    
    @IBAction func sceneTwoChoicesBtn(_ sender: UIButton) {
        if(sender.titleLabel!.text == "It's hard...unless I write it down"){
            //add 3 point
            score += 3
            textLabel.text = choiceArray[3]
        } else if (sender.titleLabel!.text == "I just say what's on my mind!"){
            //add 1 points
            score += 1
            textLabel.text = choiceArray[4]
        }else{
            //add 0 points
            textLabel.text = choiceArray[5]
        }
        sceneTwoChoices.isHidden = true
        nextButton.isEnabled = true
    }
    
    @IBAction func sceneThreeChoicesBtn(_ sender: UIButton) {
        if(sender.titleLabel!.text == "...I thought only I felt like that"){
            //add 3 point
            score += 3
            textLabel.text = choiceArray[7]
        } else if (sender.titleLabel!.text == "I can understand that"){
            //add 1 points
            score += 1
            textLabel.text = choiceArray[8]
        }else{
            //add 0 points
            textLabel.text = choiceArray[6]
        }
        sceneThreeChoices.isHidden = true
        nextButton.isEnabled = true
    }
    
    @IBAction func sceneFourChoicesBtn(_ sender: UIButton) {
        if(sender.titleLabel!.text == "It'll happen...one day"){
            //add 1 point
            score += 1
            textLabel.text = choiceArray[9]
        } else if (sender.titleLabel!.text == "I want it to happen for me too"){
            //add 3 points
            score += 3
            textLabel.text = choiceArray[11]
        }else{
            //add 0 points
            textLabel.text = choiceArray[10]
        }
        sceneFourChoices.isHidden = true
        nextButton.isEnabled = true
    }
    
    @IBAction func sceneFiveChoicesBtn(_ sender: UIButton) {
        if(sender.titleLabel!.text == "No, I learned something good!"){
            //add 1 point
            score += 1
            textLabel.text = choiceArray[13]
        } else if (sender.titleLabel!.text == "How could I ever be?"){
            //add 3 points
            score += 3
            textLabel.text = choiceArray[14]
        }else{
            //add 0 points
            textLabel.text = choiceArray[12]
        }
        sceneFiveChoices.isHidden = true
        nextButton.isEnabled = true
    }
    
}
