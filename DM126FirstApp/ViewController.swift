//
//  ViewController.swift
//  DM126FirstApp
//
//  Created by user270466 on 10/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnIniciar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    
    func configurarLayout() {
        btnIniciar.layer.cornerRadius = 20.0
    }

    @IBAction func btnIniciarPressionado(_ sender: Any) {
        print("botao clicado")
    }
}

