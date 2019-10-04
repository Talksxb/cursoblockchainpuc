pragma solidity 0.5.12;

// esta duas barras permitem comentários
/* 
este conjunto tambem permite 
no caso, para comentários maiores, de mais de uma linha
*/

// tipo de dado   - modificador de acesso - nome

// constructor(sting memory nomeLocador, string memory nomeLocatario, uint256 valorDoAluguel) public { - NESTE CASO PARA USAR A FUNÇÃO NA MESMA LINHA "," linha 26, quando for estruturar em vários ";" linhas 19-21.

    // se precisar de parametro, informar dentro do parenteses aberto na frente da função, caso não precise, mantem o () mas deixa vazio

contract Aluguel {
    



    string public locatario;
    string  public locador;
    uint256 private valor;
    
    uint256 constant numeroMaximoLegaldeAlugueisParaMulta = 3;


    constructor(string memory nomeLocador, string memory nomeLocatario, uint256 valorDoAluguel) public {
    locador = nomeLocador;
    locatario = nomeLocatario;
    valor = valorDoAluguel;
    }
    
    function valorDoAluguel () public view returns (uint256) {
        return valor;
    }

    function simulaMulta( uint256 mesesRestantes, 
    uint256 totalMesesContrato)
    public
    view
    returns (uint256 valorMulta) {
    
        valorMulta = valor*numeroMaximoLegaldeAlugueisParaMulta;
        valorMulta = valorMulta/totalMesesContrato;
        valorMulta = valorMulta*mesesRestantes;
        return valorMulta;
    }
    
    function reajustaAluguel (uint256 percentualReajuste) public {
        uint256 valorDoAcrescimo = 0;
        valorDoAcrescimo = ((valor*percentualReajuste)/100);
        
        valor = valor + valorDoAcrescimo;
        
        
    }
}
