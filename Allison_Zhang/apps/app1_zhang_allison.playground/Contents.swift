/*
 Name: Allison Zhang
 Pennkey: alzhang
 
 App 1
 
 I am looking forward to learning Swift and being able to build my own iPhone app
 */


// Exercise 1

let foo : Int = 42
var fooStr : String? = String (foo) //optional string
print("My number is \(fooStr!)") //forced unwrapping
var n :String?

//optional binding
if let fooStr = fooStr {
    print("My number is \(fooStr)")
} else {
    print ("fooStr is nil")
}

//nil coalescing
print("My number is \(fooStr ?? "empty")")



//Exercise 2
var charArr: [Character] = Array("cis195 is fun")
var charArrStr = String(charArr)
charArrStr += "!"
print(charArrStr);
var peopleDict: [String: Int] = ["Obama": 59, "Dobby": 37, "Bob": 2]
dump(peopleDict)
var myInfo = ("Ally", 2021)
print(myInfo)


//Exercise 3
peopleDict.forEach{name,age in
    if (age < 21){
        print("My friend \(name) is under 21")
    } else {
         print("My friend \(name) is not under 21")
    }
}
for num in 1...10{
    print(num)
}

for char in "cis195" {
    print(char)
}


//Exercise 4
func sumAndDiff(_ num1: Int, _ num2: Int) -> (Int, Int) {
    return (num1 + num2, num1 - num2)
}

typealias Course = String
typealias PennId = Int
func enroll(in course: Course, using pennId: PennId){
    print("Enrolled \(pennId) in \(course)")
}
let newCourse : String = "CIS195"
let myPennId : Int = 20835733
enroll(in: newCourse, using: myPennId)


// Exercises 5 and 6
struct Rectangle {
    var length : Double
    var width : Double
    func area() -> Double {
        return length * width
    }
    var description : String? {
        didSet {
            if let description = description {
                print(description)
                
            }
        }
    }
}

var myRect = Rectangle(length: 6.0, width: 3.0)
myRect.description = "This is my rectangle."
print(myRect.area())

typealias School = String
typealias Major = String
let majors = ["CIS", "BE", "CBE", "MEAM", "ESE"]

class Student {
    var name: String
    var school: School?
    var major: Major = "undeclared"
    init(name: String, school: School?, major: Major) {
        self.name = name
        self.school = school
        self.major = major
    }
    init(name: String) {
        self.name = name
    }
}
let me = Student(name: "Ally", school: "Penn", major: "CIS")
let babyQuaker = Student(name: "Dan")
babyQuaker.major = majors.randomElement()!;
