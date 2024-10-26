//
//  Perguntas.swift
//  DM126FirstApp
//
//  Created by user270466 on 10/26/24.
//

import Foundation

struct Pergunta {
    var titulo: String
    var respostas: [String]
}

let perguntas: [Pergunta] = [
    Pergunta(titulo: "Como você está se sentindo hoje?", respostas: ["Feliz", "Animado(a)", "Cansado(a)", "Estressado(a)"]),
    Pergunta(titulo: "Teve uma boa noite de sono?", respostas: ["Sim, dormi bem", "Pouco, mas dormi bem", "Dormi pouco", "Não consegui dormir"]),
    Pergunta(titulo: "Como está seu nível de estresse?", respostas: ["Baixo", "Médio", "Alto", "Muito alto"]),
    Pergunta(titulo: "Você se sente motivado para realizar suas tarefas?", respostas: ["Sim, muito motivado(a)", "Moderadamente motivado(a)", "Um pouco motivado(a)", "Sem motivação"]),
    Pergunta(titulo: "Você teve momentos de diversão hoje?", respostas: ["Sim, muitos", "Alguns momentos", "Poucos", "Nenhum"]),
    Pergunta(titulo: "O que descreve melhor seu humor atual?", respostas: ["Alegre", "Calmo(a)", "Irritado(a)", "Desmotivado(a)"])
]

