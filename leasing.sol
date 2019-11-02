pragma solidity 0.5.12;

contract LeasingFinanceiro {
    

    string public Lessor;
    string  public Lessee;
    uint256 private value;
    
    
    constructor(string memory Arrendador, string memory Arrendatario, uint256 constant value) public {
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
    
    
    //Ao final dos contratos de Leasing Financeiro há a possibilidade de compra do objeto do contrato geralmente com base no calculo que segue
    
     function LeaseOptionBuy (uint256 MarketValue) public{
        uint256 ResidualValue = 0;
        ResidualValue = MarketValue/12;
        ResidualValue = ResidualValue - MarketValue;
        ResidualValue = ResidualValue * (totalMonths -  monthsLeft);
        return = ResidualValue;
     }
     
        
    }
        
