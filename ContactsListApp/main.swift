import Foundation

var action: String?
var contacts = [Contact]()

print("Здравствуйте, Вас приветствует программа для хранения контактов!\n")
showMenu()

while action != "0" {
	action = readLine()

	switch action {
		case "0": exitProgram()
		case "1": create()
		case "2": contactsList()
		case "3": searchFromName()
		case "4": searchFromSurname()
		case "5": showMenu()
		default: wrongAction()
	}
}


