//
//  ResultadoViewController.swift
//  DM126FirstApp
//
//  Created by user270466 on 10/26/24.
//

import UIKit

class ResultadoViewController: UIViewController {
    @IBOutlet weak var ivHumor: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblMensagem: UILabel!
    
    var pontuacao: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarResultado()
    }

    func configurarResultado() {
        if let pontuacao = pontuacao {
            switch pontuacao {
            case 16...18:
                ivHumor.image = UIImage(named: "Radiante")
                lblTitulo.text = resultados[0].titulo
                lblMensagem.text = resultados[0].mensagem
            case 10...15:
                ivHumor.image = UIImage(named: "Equilibrado")
                lblTitulo.text = resultados[1].titulo
                lblMensagem.text = resultados[1].mensagem
            case 3...9:
                ivHumor.image = UIImage(named: "Desanimado")
                lblTitulo.text = resultados[2].titulo
                lblMensagem.text = resultados[2].mensagem
            case 0...2:
                ivHumor.image = UIImage(named: "Cansado")
                lblTitulo.text = resultados[3].titulo
                lblMensagem.text = resultados[3].mensagem
            default:
                break
            }
        } else {
            return
        }
    }
}
