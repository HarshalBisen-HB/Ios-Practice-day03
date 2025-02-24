

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func goToLogin(_ sender: Any) {
        
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        
        let vc = storyboard.instantiateViewController(withIdentifier:"LoginViewController")
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

