//
//  ViewController.swift
//  DeepLinksSwiftTutorial
//
//  Created by Kevinho Morales on 22/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openWordAction(_ sender: Any) {
        openMicrosoft365()
    }
    
    private func openMicrosoft365() {
        guard let url = URL(string: "ms-word://") else { return }
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}

