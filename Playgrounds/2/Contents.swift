//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("Texto dentro de un print")
let number = 123
print(number)
//: print agrega un salto de linea
//: puede imprimir cualquier tipo de dato (int, str)

//: Funciones

func displayNameAge(){
    print("My name is Omar")
    print("My age is 23")
}
displayNameAge()

func first(){
    print("""
    Once upon a time you dressed so fine
    Threw the bums a dime in your prime, didn't you?
    People call say 'beware doll, you're bound to fall'
    You thought they were all kidding you
    You used to laugh about
    Everybody that was hanging out
    Now you don't talk so loud
    Now you don't seem so proud
    About having to be scrounging your next meal
 """)
}

func howDoesItFeel(){
    print("How does it feel, how does it feel?")
    print("To be without a home")
}

func rollingStone(){
    print("Like a complete unknown")
    print("like a rolling stone")
}

first()
howDoesItFeel()

//: Declarar parametros

func hello(name : String){
    print("Hello " + name)
}

hello(name: "Omar")
hello(name: "Daniel")


func helloLastName(name: String, lastName:String) -> String{
    return "Hello \(name) \(lastName)"
    
}

helloLastName(name: "Omar", lastName: "Viveros")

let completeName1 = helloLastName(name: "Omar", lastName: "Viveros")

print(completeName1)


func substract(oneNumber: Int, fromAnotherNumber: Int) -> Int{
    
    return oneNumber - fromAnotherNumber
    
}
let result = substract(oneNumber: 150, fromAnotherNumber: 60)
print(result)



