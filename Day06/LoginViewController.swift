import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailEdit: UITextField!
    
    @IBOutlet weak var passwordEdit: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToHome(_ sender: Any) {
        
        func showMessage(message: String){
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
            
            present(alert, animated: true,completion: nil)
        }
        
        if emailEdit.text!.isEmpty
        {
            showMessage(message: "please enter email")
        }
        else if passwordEdit.text!.isEmpty {
            showMessage(message: "please enter password")
            
        }
        else{
            print(emailEdit.text!)
            print(passwordEdit.text!)
       
            let storyboard = UIStoryboard(name:"Main", bundle: nil)
            
            
            let vc = storyboard.instantiateViewController(withIdentifier:"HomeViewController")as! HomeViewController
            
            vc.emailN = emailEdit.text!
            
               navigationController?.pushViewController(vc, animated: true)
            
            
        }
        }
    
    
  
    @IBAction func goToregister(_ sender: Any) {
        
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        
        let vc = storyboard.instantiateViewController(withIdentifier:"RegisterViewController")
        
        
           navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
