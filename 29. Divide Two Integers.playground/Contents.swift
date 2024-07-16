func divide(_ dividend: Int, _ divisor: Int) -> Int {
    let divideInt: Int = dividend / divisor
    
    if divideInt > Int32.max {
        return Int(Int32.max)
    } else if divideInt < Int32.min {
        return Int(Int32.min)
    } else {
        
        return divideInt
    }
}


var int1 = -214748364
var int2 = 1

let divideInt = divide(int1, int2)
