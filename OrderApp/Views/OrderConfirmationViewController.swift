//
//  OrderConfirmationViewController.swift
//  OrderApp
//
//  Created by Sergei Kovalev on 28.07.2022.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    
    @IBOutlet weak var confirmationLabel: UILabel!
    
    
    let minutesToPrepare: Int
    
    init?(coder: NSCoder, minutesToPrepare: Int) {
        self.minutesToPrepare = minutesToPrepare
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        confirmationLabel.text = "Thenk you for your order! Your wait time is approximately \(minutesToPrepare) minutes."
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
