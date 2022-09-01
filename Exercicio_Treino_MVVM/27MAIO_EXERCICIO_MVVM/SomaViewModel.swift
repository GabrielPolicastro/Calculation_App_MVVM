//
//  SomaViewModel.swift
//  27MAIO_EXERCICIO_MVVM
//
//  Created by Gabriel Policastro on 04/07/22.
//

import Foundation

protocol SomaViewModelDelegate {
    func exibeResultado(_ resultadoSoma: String)
}

class SomaViewModel {
    
    var delegate: SomaViewModelDelegate?
    
    func somar(primeiroValor: String?,segundoValor: String?) {
        if let primeiroValor = primeiroValor, let segundoValor = segundoValor {
            if let primeiroNumero = Int(primeiroValor), let segundoNumero = Int(segundoValor) {
                let resultadoSoma = primeiroNumero + segundoNumero
                delegate?.exibeResultado("\(resultadoSoma)")
            }
        }
    }
    
    func somarComRetorno(primeiroValor: String?,segundoValor: String?) -> String? {
        if let primeiroValor = primeiroValor, let segundoValor = segundoValor {
            if let primeiroNumero = Int(primeiroValor), let segundoNumero = Int(segundoValor) {
                let resultadoSoma = primeiroNumero + segundoNumero
                return "\(resultadoSoma)"
            }
        }
        return nil
    }
    
    func subtracaoComRetorno(primeiroValor: Int, segundoValor: Int) -> Int {
        return primeiroValor - segundoValor
    }
}
