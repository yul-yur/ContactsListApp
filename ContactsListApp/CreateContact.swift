import Foundation

struct Contact {
	let name: String
	let surname: String
	let birthDate: String
	let phone: String
	let email: String
	let company: String
}


func create() {

	print("Вы включили режим добавления контакта в список контактов.")

	let contact = Contact(name: writeName(), surname: writeSurname(), birthDate: writeBirthDate(), phone: writePhone(), email: writeEmail(), company: writeCompany())

	contacts.append(contact)
	print("Контакт успешно записан в ваш список!")
	splitLines()
}


func writeName() -> String {
	var name = ""
	while name.isEmpty {
		print("Введите имя контакта")
		name = readLine() ?? name
	}
	return name
}

func writeSurname() -> String {
	var surname = ""
	while surname.isEmpty {
		print("Введите фамилию контакта")
		surname = readLine() ?? surname
	}
	return surname
}

func writeBirthDate() -> String {
	var birthDate = ""
	while birthDate.isEmpty {
		print("Введите дату рождения")
		birthDate = readLine() ?? birthDate
	}
	return birthDate
}

func writePhone() -> String {
	var phone = ""
	while phone.isEmpty {
		print("Введите номер телефона")
		phone = readLine() ?? phone
	}
	return phone
}

func writeEmail() -> String {
	var email = ""
	while email.isEmpty {
		print("Введите электронную почту")
		email = readLine() ?? email
	}
	return email
}

func writeCompany() -> String {
	var company = ""
	while company.isEmpty {
		print("Введите имя компании")
		company = readLine() ?? company
	}
	return company
}



