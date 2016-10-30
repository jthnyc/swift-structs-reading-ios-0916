/*
class Person_ {
    let firstName: String
    let lastName: String
    var fullName: String {
        return "\(firstName) \(lastName)"
    }

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func goForARun() {
        print("I love running!")
    }
}

let jim = Person_ (firstName: "Jimbo", lastName: "Guiseppe")
print(jim.fullName)
jim.goForARun()
*/



struct Person_ {
    let firstName: String
    let lastName: String
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    func goForRun () {
        print("I love running")
    }
}

let jim2 = Person_(firstName: "Jimbo", lastName: "Giuseppe")
print(jim2.fullName)


// notice don't need to have initailizers for struct, but you can still define own initializer. 

// structs are value types / classes are reference types


class Person {
    var firstName: String
    var lastName: String
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var person1 = Person(firstName: "Luke", lastName: "Skywalker")
var person2 = person1

print(person1.fullName)
print(person2.fullName)

person1.firstName = "Han"
person1.lastName = "Solo"
print(person1.fullName)
print(person2.fullName)

// in classes, changes made to one variable would affect variable equated -- as it is by reference, it points to the same origin.

struct Person2 {
    var firstName: String
    var lastName: String
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
}

var hero1 = Person2(firstName: "Luke", lastName: "Skywalker")
var hero2 = hero1

hero1.firstName = "Han"
hero1.lastName = "Solo"
print(hero1.fullName)
print(hero2.fullName)

// in structs, changes made to one variable does NOT affect another, as it is of value type, it makes a direct copy.

class Mug {
    var amountOfCoffee: Double = 0.0
}

func fillMug(mug: Mug) {
    mug.amountOfCoffee = 10.0
}


let myMug = Mug()
print(myMug.amountOfCoffee)
fillMug(mug: myMug)
print(myMug.amountOfCoffee)

// when using class, you can't assign myMug to another instance, but you can change its contents by using a function outside of the class

struct Mug2 {
    var amountOfCoffee: Double = 0.0
    
    mutating func fillMug(){
        amountOfCoffee = 10.0
    }
}

/*
func fillMug(mug: Mug2) {
    mug.amountOfCoffee = 10.0
}
 */

// but when using struct, you would need to specify keyword mutating for functions passed within the struct (because outside would only affect the "COPY" of that struct) in order for

var myMug1 = Mug()
print(myMug1.amountOfCoffee)

