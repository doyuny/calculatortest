import UIKit

var numOne = ""
var operatorString = ""
var numTwo = ""
    
func showAlert(message: String) {
    let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
    UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil)
}

func calculateResult() {
    guard let numberOne = Double(numOne), let numberTwo = Double(numTwo) else {
        showAlert(message: "유효한 숫자를 입력하세요.")
        return
    }
    
    var result: Double = 0.0
    switch operatorString {
    case "+":
        result = numberOne + numberTwo
    case "-":
        result = numberOne - numberTwo
    case "*":
        result = numberOne * numberTwo
    case "/":
        result = numberOne / numberTwo
    default:
        break
    }
    
    let remainder = calculateRemainder(dividend: Int(result), divisor: Int(numberTwo))
    print("나머지: \(remainder)")
    
    func calculateRemainder(dividend: Int, divisor: Int) -> Int {
        return dividend % divisor
        
        class AddOperation {
            
            var firstNum:Double
            var secondNum:Double
            
            init(firstNum:Double, secondNum:Double){
                self.firstNum = firstNum
                self.secondNum = secondNum
            }
            
            func operate() -> Double{
                return firstNum + secondNum
            }
            
        }
        
        class SubtractOperation {
            
            var firstNum:Double
            var secondNum:Double
            
            init(firstNum:Double, secondNum:Double){
                self.firstNum = firstNum
                self.secondNum = secondNum
            }
            func operate() -> Double{
                return firstNum - secondNum
            }
        }
        
        class MultiplyOperation {
            
            var firstNum:Double
            var secondNum:Double
            
            init(firstNum:Double, secondNum:Double){
                self.firstNum = firstNum
                self.secondNum = secondNum
            }
            func operate(){
                
            }
        }
        
        class DivideOperation {
            
            var firstNum:Double
            var secondNum:Double
            
            init(firstNum:Double, secondNum:Double){
                self.firstNum = firstNum
                self.secondNum = secondNum
            }
            func operate(){
                
            }
        }
        
        class Calculator {
            
            var firstNum:Double
            var secondNum:Double
            
            init(firstNum:Double, secondNum:Double){
                self.firstNum = firstNum
                self.secondNum = secondNum
            }
            
            func calculate(type:String) -> Double {
                
                var result = 0
                
                if type == "add"{
                    let temp = AddOperation(firstNum: firstNum, secondNum: secondNum)
                    result = Int(temp.operate())
                } else if type == "sub"{
                    let temp = SubtractOperation(firstNum: firstNum, secondNum: secondNum)
                } else if type == "mul"{
                    let temp = MultiplyOperation(firstNum: firstNum, secondNum: secondNum)
                } else if type == "div"{
                    let temp = DivideOperation(firstNum: firstNum, secondNum: secondNum)
                } else if type == "rem" { // 나머지 연산
                    let remainder = calculateRemainder(dividend: Int(firstNum), divisor: Int(secondNum))
                    result = Int(remainder)
                }else {
                    return 0.0
                }
                return Double(result)
            }
            
        }
        
        
        var calculator = Calculator(firstNum: 5, secondNum: 5)
        
        print(calculator.calculate(type: "add"))
    }
}
