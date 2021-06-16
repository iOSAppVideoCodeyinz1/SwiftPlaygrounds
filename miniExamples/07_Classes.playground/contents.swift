// Simple class --------------------------------------------------------------------------------------------------------------------

class BankAccount: CustomStringConvertible{
    var name: String
    var balance: Double
    
    static var numberOfBankAccounts = 0
    
    
    init(name: String, balance: Double){
        self.name = name
        self.balance = balance
        BankAccount.numberOfBankAccounts += 1
    }
    
    static func gerNumberOfBankAccounts() -> Int{
        return BankAccount.numberOfBankAccounts
    }
    
    func deposit(_ amount : Double ){
        self.balance += amount
    }
    
    func withdraw(_ amount : Double ){
        self.balance -= amount
    }
    
    var description: String {
        return "\(name): $\(balance)"
    }
}






var daveAccount = BankAccount(name: "Dave", balance: 100.00)
daveAccount.name
daveAccount.balance += 100
daveAccount.balance

//daveAccount.deposit(amount : 50)
daveAccount.deposit(50)
daveAccount.balance

daveAccount.withdraw(10)


var daveAccount2 = BankAccount(name: "Dave2", balance: 100.00)
BankAccount.gerNumberOfBankAccounts()


// Subclass--------------------------------------------------------------------------------------------------------------------
class AtmBankAccount: BankAccount {
    var withdrawFee: Double
    
    override convenience init(name: String, balance: Double){
//        withdrawFee = 2.0
//        super.init(name: name, balance: balance)
        self.init(name: name, balance: balance, withdrawFee: 2.0)
    }
    
    init(name: String, balance: Double, withdrawFee: Double) {
        self.withdrawFee = withdrawFee
        super.init(name: name, balance: balance)
    }
    
    convenience init(){
        self.init(name: "Unknown", balance: 0, withdrawFee: 2.0)
    }
    
    override func withdraw(_ amount: Double) {
        super.withdraw(amount)
        balance -= withdrawFee
    }
}





//var bobAccount = AtmBankAccount(name: "Bob", balance: 100, withdrawFee: 33)
var bobAccount = AtmBankAccount()
bobAccount.name = "Bob"
bobAccount.deposit(100)
bobAccount.withdraw(40)





