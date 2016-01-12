

import Foundation

/*Hay dos maneras de variables*/
var numberOfRows = 30 //Variables
let maxNumberOfRows = 100 //Constantes


/* concatenar e imprimir facilmente dos cadenas*/
let firstMessage = "Swift is awesome. "
let secondMessage = "What do you think?"
var message = firstMessage + secondMessage
println(message)

/* hacer comparaciones entre cadenas*/
var string1 = "Hello"
var string2 = "Hello"
if string1 == string2 {
    println("Both are the same")
}

/*declarar arrays*/
var recipes = ["Egg Benedict", "Mushroom Risotto", "Full Breakfast", "Hamburger", "Ham and Egg Sandwich"]
var numberOfItems = recipes.count

/*Asignando elementos al array*/
recipes += ["Creme Brelee", "White Chocolate Donut", "Ham and Cheese Panini"]

var recipeItem = recipes[0]
recipes[1] = "Cupcake"

/*Diccionarios*/
var companies = ["AAPL" : "Apple Inc", "GOOG" : "Google Inc", "AMZN" : "Amazon.com, Inc", "FB" : "Facebook Inc"]


//Iterar dentro de un diccionario
for (stockCode, name) in companies {
    println("\(stockCode) = \(name)")
}

//Keys
for stockCode in companies.keys {
    println("Stock code = \(stockCode)")
}

//values
for name in companies.values {
    println("Company name = \(name)")
}

//Agregando elemento al diccionario
companies["TWTR"] = "Twitter Inc"

/*********** Clases **************/
class Recipe {
    var name: String = ""
    var duration: Int = 10
    var ingredients = ["egg"]
}

//Crear una instancia
var recipeItems = Recipe()

//Acceder a los valores
recipeItems.name = "Mushroom Risotto"
recipeItems.duration = 30
recipeItems.ingredients = ["1 tbsp dried porcini mushrooms", "2 tbsp olive oil", "1 onion, chopped", "2 garlic cloves", "350g/12oz arborio rice", "1.2 litres/2 pints hot vegetable stock", "salt and pepper", "25g/1oz butter"]

/********* Metodos *************/
class TodoManager {
    func printWelcomeMessage(name:String) -> Int {
        println("Welcome to \(name)'s ToDo List")
        
        return 10
    }
}

//Llamando a los metodos
var todoManager = TodoManager()
let numberOfTodoItem = todoManager.printWelcomeMessage("Simon")
println(numberOfTodoItem)


/******* Estructuras de control ********/
let recipeName = "Egg Benedict"
switch recipeName {
case "Egg Benedict":
    println("Let's cook!")
case "Mushroom Risotto":
    println("Hmm... let me think about it")
case "Hamburger":
    println("Love it!")
default:
    println("Anything else")
}


//Switch con rangos
var speed = 50
switch speed {
case 0:
    println("stop")
case 0...40:
    println("slow")
case 41...70:
    println("normal")
case 71..<101:
    println("fast")
default:
    println("not classified yet")
}

//Clase con metodo
class Stock {
    var code: String?
    var price: Double?
}

func findStockCode(company: String) -> Stock? {
    if (company == "Apple") {
        let aapl: Stock = Stock()
        aapl.code = "AAPL"
        aapl.price = 90.32
        
        return aapl
        
    } else if (company == "Google") {
        let goog: Stock = Stock()
        goog.code = "GOOG"
        goog.price = 556.36
        
        return goog
    }
    
    return nil
}

