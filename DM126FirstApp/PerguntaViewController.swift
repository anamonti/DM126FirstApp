//
//  PerguntaViewController.swift
//  DM126FirstApp
//
//  Created by user270466 on 10/26/24.
//

import UIKit

class PerguntaViewController: UIViewController {
    @IBOutlet weak var lblTituloPergunta: UILabel!
    @IBOutlet var btnRespostas: [UIButton]!
    
    var pontuacao = 0
    var perguntaAtual = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarLayout()
        configurarPergunta()
    }
    
    func configurarLayout() {
        lblTituloPergunta.numberOfLines = 0
        lblTituloPergunta.textAlignment = .center
        for botao in btnRespostas {
            botao.layer.cornerRadius = 30.0
        }
    }
    
    func configurarPergunta() {
        lblTituloPergunta.text = perguntas[perguntaAtual].titulo
    }
    
    @IBAction func btnRespostaPressionado(_ sender: UIButton) {
        print(sender.tag)
    }
}
