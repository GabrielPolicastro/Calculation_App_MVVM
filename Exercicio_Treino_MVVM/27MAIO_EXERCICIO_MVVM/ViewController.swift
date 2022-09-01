//
//  ViewController.swift
//  27MAIO_EXERCICIO_MVVM
//
//  Created by Gabriel Policastro on 04/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var primeiroNumeroTextField: UITextField!
    @IBOutlet weak var segundoNumeroTextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    let viewModel = SomaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
    }
    
    @IBAction func somarButtonAction(_ sender: Any) {
        
        viewModel.somar(primeiroValor: primeiroNumeroTextField.text, segundoValor: segundoNumeroTextField.text
        )
    }
}

extension  ViewController: SomaViewModelDelegate {
    func exibeResultado(_ resultadoSoma: String) {
        resultadoLabel.text = resultadoSoma // trago aqui a label de resultado para exibir o resultado usando a delegate
    }
}
