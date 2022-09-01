//
//  _7MAIO_EXERCICIO_MVVMTests.swift
//  27MAIO_EXERCICIO_MVVMTests
//
//  Created by Gabriel Policastro on 04/07/22.
//

import XCTest
@testable import _7MAIO_EXERCICIO_MVVM

class _7MAIO_EXERCICIO_MVVMTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let viewModel = SomaViewModel()
        
        let resultadoSoma = viewModel.somarComRetorno(primeiroValor: "2", segundoValor: "3")
        
        XCTAssertEqual(resultadoSoma, "5")
        
    }

    
    func testSomaViewModel_quandoOPrimeiroParametroVierNulo_eOSegundoParametroVierNulo_aFuncaoSomarComRetornoDeveRetornarNulo() {
        // given_when_then - dado que eu estou testando SomaViewModel quando o primeiro..... entao deve reotrnar nulo.
        let viewModel = SomaViewModel()
        
        let resultadoSoma = viewModel.somarComRetorno(primeiroValor: nil, segundoValor: nil)
        
        XCTAssertEqual(resultadoSoma, nil)
        
    }
    
    func testSomaViewModel_quandoOPrimeiroParametroVierComValor3_eOSegundoParametroVierComValor3_aFuncaoSubtrairComRetornoDeveRetornar0() {
        
        let viewModel = SomaViewModel()
        
        let resultadoSubtracao = viewModel.subtracaoComRetorno(primeiroValor: 3, segundoValor: 3)
        
        XCTAssertEqual(resultadoSubtracao, 0)
    }
    
    
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
