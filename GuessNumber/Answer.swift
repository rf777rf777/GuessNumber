import UIKit

class GetTheAnswer {
    //產生1~100的隨機數
    var answerNumber = Int(arc4random_uniform(100))+1
    
    var maxNumber = 100
    var minNumber = 1
    
    //判斷遊戲是否結束
    var isOver = false

    //比較數字的函式 接受一個String的inputText參數 回傳一個String結果
    func compareNumber(inputText:String) -> String {
        
        //在console視窗中print出答案
        print(answerNumber)
        
        //將使用者的輸入值(字串)轉型成Int
        let inputNumber = Int(inputText)
        
        //遊戲尚未結束的情況
        if isOver == false {
            //inputNumber為空值
            if inputNumber == nil {
                return "Please . Between \(minNumber)~\(maxNumber)"
            }
            else{
                //輸入值為解答 遊戲結束
                if inputNumber == answerNumber {
                    //將isOver變成true
                    isOver = true
                    return "You got the Answer!! \(answerNumber) !!"
                }
                else{
                    //輸入值超出範圍
                    if inputNumber! > maxNumber || inputNumber! < minNumber {
                        return "Out Of Range . Between \(minNumber)~\(maxNumber)"
                    }
                    else{
                        //輸入值小於答案值 則將輸入值丟給minNumber
                        if inputNumber! < answerNumber{
                            minNumber = inputNumber!
                        }
                        //輸入值大於答案值 則將輸入值丟給maxNumber
                        else{
                            maxNumber = inputNumber!
                        }
                        return "Between \(minNumber)~\(maxNumber)"
                    }
                }
            }
        }
        //遊戲結束的情況
        else{
            //重新將isOver變回false
            isOver = false
            
            //產生新的隨機整數做為解答
            answerNumber = Int(arc4random_uniform(100))+1
            
            //重新賦予最大最小值
            maxNumber = 100
            minNumber = 1
            
            return "Between 1 ~ 100"
        }

    }
}
