//
//  HomeVC.swift
//  MVC
//
//  Created by Fernado Belen on 08/09/2021.
//

import UIKit

class HomeVC: UIViewController {

    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Mostrar ayuda", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }
    
    func setupView() {
        addviewHierarchy()
        addConstraints()
        addActions()
    }
    
    func addviewHierarchy() {
        view.addSubview(button)
    }
    
    func addConstraints(){
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func addActions() {
        button.addTarget(self, action:#selector(openHelpVC), for: .touchUpInside)
    }
    
    
    @objc func openHelpVC() {
        let vc = HelpVC()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }

}
