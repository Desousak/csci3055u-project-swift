/*
Made by: Kevin Desousa
A program made to demonstrate the standard library
Uses print(), readLine(), isSuperset(), contains(), String() and reduce() with Sets and Collections
*/

let banner = """
                                                            ,---. 
        ,--.   ,--.       ,--.                              |   | 
        |  |   |  | ,---. |  | ,---. ,---. ,--,--,--. ,---. |  .' 
        |  |.'.|  || .-. :|  || .--'| .-. ||        || .-. :|  |  
        |   ,'.   |\\   --.|  |\\ `--.' '-' '|  |  |  |\\   --.`--'  
        '--'   '--' `----'`--' `---' `---' `--`--`--' `----'.--.  
                                                            '--'     
        """

print(banner)
print("Hello! What is your name?")


if let name = readLine() {
    print()
    let messages = ["Hi \(name) and welcome!", "This program is meant as a test of the standard library.", "More information from the standard library can be found at:", "https://developer.apple.com/documentation/swift/swift_standard_library"]
    for i in messages {
        print(i)
    }
}

print("\nThis is a test of sets:")
let cakeIngredients: Set = ["Cream", "Sugar", "Butter", "Flour", "Chocolate", "Bread"]
print("This cake is made out of: ", terminator:""); print(cakeIngredients)
if cakeIngredients.contains("Chocolate") {
    print("- I prefer my cake with Vanilla though.")
}

let sweetIngredients: Set = ["Cream", "Sugar"]
if cakeIngredients.isSuperset(of: sweetIngredients) {
    print("- This cake will be sweet!")
}

let numbers: Set = [1,2,3,4,5,6,7,8,9,10]
print("\nThe sequence of: ", terminator:"")
print(numbers)
print("The sequence will total up to be: " + String(numbers.reduce(0, +)))
