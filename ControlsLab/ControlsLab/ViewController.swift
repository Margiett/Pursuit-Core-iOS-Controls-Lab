import UIKit

class ViewController: UIViewController {
//MARK: Outlets, and Properties

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var stepperControl: UIStepper!
    
    @IBOutlet weak var cardValue1: UILabel!
    
   
    @IBOutlet weak var cardValue2: UILabel!
    
    @IBOutlet weak var cardValue3: UILabel!
  
    @IBOutlet weak var cardValuePicture1: UIImageView!
    
   
    @IBOutlet weak var cardValuePicture2: UIImageView!
    
    
    @IBOutlet weak var cardValuePicture3: UIImageView!
    
    var cardCurrentValue = 1
    
    // Step 1 anything what we want to start has to be started in the viewDidLoad
    // it gets called once
    override func viewDidLoad() {
        super.viewDidLoad()
       print("viewDidLoad")
    }
      func configureStepper() {

            stepperControl.minimumValue = 1.0
            stepperControl.maximumValue = 13.0
            stepperControl.stepValue = 1.0
            
            stepperControl.value = 6.0
        }
    
    var cardPictureValue: Int = 0 {
         didSet {
             switch segmentedControl.selectedSegmentIndex {
             case 0 :
                cardValuePicture1.image = #imageLiteral(resourceName: "Diamond")
                cardValuePicture2.image = #imageLiteral(resourceName: "Diamond")
                cardValuePicture3.image = #imageLiteral(resourceName: "Diamond")
             case 1:
                cardValuePicture1.image = #imageLiteral(resourceName: "Heart")
                cardValuePicture2.image = #imageLiteral(resourceName: "Heart")
                cardValuePicture3.image = #imageLiteral(resourceName: "Heart")
             case 2 :
                cardValuePicture1.image = #imageLiteral(resourceName: "club")
                cardValuePicture2.image = #imageLiteral(resourceName: "club")
                cardValuePicture3.image = #imageLiteral(resourceName: "club")
                  
             default:
                cardValuePicture1.image = #imageLiteral(resourceName: "spades")
                cardValuePicture2.image = #imageLiteral(resourceName: "spades")
                cardValuePicture3.image = #imageLiteral(resourceName: "spades")
     }
        }
    }
    
    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        cardPictureValue = sender.selectedSegmentIndex
    }
    
    @IBAction func stepperControlAction(_ sender: UIStepper) {
        cardCurrentValue = Int(sender.value)
        
        print(cardCurrentValue)
        
        switch stepperControl.value {
        case 1: cardValue1.text = "A"
        cardValue2.text = "A"
        cardValue3.text = "A"
            
        case 12: cardValue2.text = "Q"
        cardValue1.text = "Q"
        cardValue3.text = "Q"
        
        case 13: cardValue3.text = "K"
        cardValue2.text = "K"
        cardValue1.text = "K"
        case 11:
            cardValue1.text = "J"
            cardValue2.text = "J"
            cardValue3.text = "J"
            
        // when ever you want to turn an Int or a double into a string just put .description and it would convert it into a string.
        default: cardValue1.text = cardCurrentValue.description
        cardValue2.text = cardCurrentValue.description
        cardValue3.text = cardCurrentValue.description
           
            
            
        }
//        cardValue1.text = "\(cardCurrentValue)"
//        cardValue2.text = "\(cardCurrentValue)"
//        cardValue3.text = "\(cardCurrentValue)"
    }
    
    
    
 

// label
// segmentated control
// stepper label
// 
}
