import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButton(_ sender: Any) {
        
        let text = textField.text
        
        defaults.set(text, forKey: "text")
        
    }
    
    @IBAction func loadButton(_ sender: Any) {
        
        let text = defaults.string(forKey: "text")
        
        textLabel.text = text
        
    }
    
}

