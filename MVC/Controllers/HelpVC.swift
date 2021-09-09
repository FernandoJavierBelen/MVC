//
//  HelpVC.swift
//  MVC
//
//  Created by Fernado Belen on 08/09/2021.
//

import UIKit

class HelpVC: UIViewController {

    lazy var button2: UIButton = {
        let button2 = UIButton()
        button2.setTitle("Salir de ayuda", for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.backgroundColor = .black
        
        return button2
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        settupView()
    }
    
    func settupView() {
        addviewHierarchy()
        addConstraints()
        addActions()
        
    }
    
    func addviewHierarchy() {
        view.addSubview(button2)
    }
    
    func addConstraints(){
        button2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 80).isActive = true
        button2.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func addActions() {
        button2.addTarget(self, action: #selector(closeHelpVC), for: .touchUpInside)
    }
    
    @objc func closeHelpVC(){
        self.dismiss(animated: true, completion: nil)
    }
    
}
