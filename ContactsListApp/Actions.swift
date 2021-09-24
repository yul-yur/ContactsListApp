import Foundation

func splitLines() {
	print ("#######################")
}

func exitProgram () {
	splitLines()
	print("Вы вышли из программы. Спасибо за использование, ждём Вас снова!")
	splitLines()
}

func showMenu() {
	splitLines()
	print("Наберите цифру для нужного Вам действия.")
	print("0 - Выход из программы")
	print("1 - Добавить новый контакт")
	print("2 - Вывести список всех контактов")
	print("3 - Поиск по имени")
	print("4 - Поиск по фамилии")
	print("5 - Показать меню действий\n")
	splitLines()
}

func wrongAction () {
	splitLines()
	print ("Вы ввели неверную команду! Попытайтесь ещё раз. \nВведите 3 для показа меню действий ")
	splitLines()
}

func searchFromName() {
	if contacts.count != 0 {
		var searchResults = [Contact]()
		var name = ""
		while name.isEmpty {
			print("Введите имя искомого контакта")
			splitLines()
			name = readLine() ?? name
		}
		for contact in contacts {
			if contact.name == name {
				searchResults.append(contact)
			}
		}
		if searchResults.count != 0 {
			for result in searchResults{
				print ("Найденные контакты:")
				printContact(result)
			}
		}
		else {
			splitLines()
			print("Ничего не найдено")
			splitLines()
		}
	}
	else {
		splitLines()
		print ("Ваш список контактов пуст.")
		splitLines()
	}
}

func searchFromSurname() {
	if contacts.count != 0 {
		var searchResults = [Contact]()
		var surname = ""
		while surname.isEmpty {
			print("Введите фамилию искомого контакта")
			splitLines()
			surname = readLine() ?? surname
		}
		for contact in contacts {
			if contact.surname == surname {
				searchResults.append(contact)
			}
		}
		if searchResults.count != 0 {
			for result in searchResults{
				print ("Найденные контакты:")
				printContact(result)
			}
		}
		else {
			splitLines()
			print("Ничего не найдено")
			splitLines()
		}
	}
	else {
		splitLines()
		print ("Ваш список контактов пуст.")
		splitLines()
	}
}


