//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)
var i:Int8 = -128
print(i)
var x = 1, y = 2
(x,y) = (y,x)
print("x=\(x) y=\(y)")
let ind = [75,43,103,87,12]
var team = 0
for score in ind{
    if score > 60{
        team += 3
    }else{
        team += 1
    }
}
print(team)
let vegetable = "red pepper"
switch vegetable{
case "fas":
    print("hfsdkksd")
case "gfsdg":
    print("fsfa")
case let x where x.hasSuffix("pepper"):
    print("hello world")
default:
    print("vdvzsa")
}
var age = 60
switch age{
case let x where x < 18:
        print("qingnian")
case let x where x < 40:
    print("zhongnian")
default:
    print("laonian")
}

func add(one x:Int, _ y:Int) -> Int {
    return x+y
}
var r = add(one: 1, 2)
print(r)
var k:String? = "hello world"
print(k)
var sr:String = ""
sr = k!
print(sr)
if let x = k {
    sr = x
}
print(sr)
var primes = [Int]()
for i in 2...100 {
    var isPrime = true
    for j in 2..<i{
        if i % j == 0 {
            isPrime = false
        }
    }
    if isPrime{
        primes.append(i)
    }
}
//func compare(one:Int,two:Int) -> Bool{
//    return one > two
//}
//primes.sort(by: {(one,two) in one > two})
//primes.sort(by: >)
print(primes)
enum Gender{
    case male
    case female
}
class Person{
    var firstName:String
    var lastName:String
    var age:Int
    var gender:Gender
    var fullName:String{
        get{
            return firstName+" "+lastName
        }
    }
    init(firstName:String,lastName:String,age:Int,gender:Gender){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
    }
    convenience init(name:String){
        self.init(firstName:  name, lastName: "", age: 18, gender: Gender.male)
    }
    //func description() -> String {
      //  return "Name":\(fullName) "Age":\(age) Gender:\(gender)"
    //}
    var description:String {
        return "Name:\(fullName) Age:\(age) Gender:\(gender)"
    }
}
class Student:Person{
    var grade:Int
    init(firstName: String, lastName: String, age: Int, gender: Gender,grade:Int) {
        self.grade = grade
        super.init(firstName: firstName, lastName: lastName, age: age, gender: gender)
    }
    convenience init(name:String){
        self.init(firstName: name, lastName: "", age: 18, gender: Gender.female, grade: 60)
    }
    override var description: String{
        return super.description + "grade:\(grade)"
    }
}
let p1 = Person(firstName: "li",lastName: "guiyang",age: 18,gender:Gender.male)
let p2 = Person(name: "gaoyunxiang")
let p3 = Person(name:"xiaojia")
print(p1.description)
print(p2.description)
print(p3.description)


