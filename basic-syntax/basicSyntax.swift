import Foundation

let message = "Hello! My name is: "

if let name = readLine(){
    let max = 10
    for _ in (0 ... max){
        print(message + name)
    }
}
