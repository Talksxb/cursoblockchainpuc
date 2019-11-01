pragma solidity 0.5.12;

    // esta duas barras permitem comentários
/* 
este conjunto tambem permite 
no caso, para comentários maiores, de mais de uma linha
*/

// tipo de dado   - modificador de acesso - nome

// constructor(sting memory nomeLocador, string memory nomeLocatario, uint256 valorDoAluguel) public { - NESTE CASO PARA USAR A FUNÇÃO NA MESMA LINHA "," linha 26, quando for estruturar em vários ";" linhas 19-21.

    // se precisar de parametro, informar dentro do parenteses aberto na frente da função, caso não precise, mantem o () mas deixa vazio

contract LeasingFinanceiro {
    



    string public Lessor;
    string  public Lessee;
    uint256 private value;
    
    
    constructor(string memory Arrendador, string memory Arrendatario, uint256 value) public {
    Lessor = Arrendador;
    Lessee = Arrendatario;
    value = monthlyPaymentAmount;
    }
    
    //valor pago mensalmente
    function monthlyPaymentAmount () public view returns (uint256) {
        return value;
    }
    
    
    //a multa em casos de leasing financeiro: aplica-se o valor total restante do contrato, tendo em vista a natureza do negócio
    function LiquidatedDamages( uint256 monthsLeft, 
    uint256 totalMonths)
    public
    view
    returns (uint256 Damages) {
    
        Damages = (totalMonths - monthsLeft) * value;
        return Damages;
    }
    
    
    //
    function leaseOptionToBuy (uint256 ResidualValue) public {
        uint256 ResidualValue = 0;
        valorDoAcrescimo = ((valor*percentualReajuste)/100);
        
        valor = valor + valorDoAcrescimo;
        
    function 
        
    }
