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
    
    var pontuacao: Int = 18
    var perguntaAtual: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarLayout()
        configurarPergunta()
    }
    
    func configurarLayout() {
        lblTituloPergunta.numberOfLines = 0
        lblTituloPergunta.textAlignment = .center
        for botao in btnRespostas {
            botao.clipsToBounds = true
            botao.layer.cornerRadius = 20.0
        }
    }
    
    func configurarPergunta() {
        lblTituloPergunta.text = perguntas[perguntaAtual].titulo
        for botao in btnRespostas {
            let tituloBotao = perguntas[perguntaAtual].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
        }
    }
    
    @IBAction func btnRespostaPressionado(_ sender: UIButton) {
        if sender.tag == 1 {pontuacao -= 1}
        else if sender.tag == 2 {pontuacao -= 2}
        else if sender.tag == 3 {pontuacao -= 3}
         
         if perguntaAtual < perguntas.count - 1 {
             perguntaAtual += 1
             configurarPergunta()
         } else {
             navegaParaTelaResultado()
         }
    }
    
    func navegaParaTelaResultado() {
        performSegue(withIdentifier: "irParaTelaResultado", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultadoVC = segue.destination as? ResultadoViewController
        else { return }
        resultadoVC.pontuacao = pontuacao
     }

}
