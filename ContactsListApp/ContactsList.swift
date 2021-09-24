import Foundation

func printContact (_ contact: Contact) {
	splitLines()
	print ("Имя: \(contact.name)")
	print("Фамилия: \(contact.surname)")
	print("Дата рождения: \(contact.birthDate)")
	print("Номер телефона: \(contact.phone)")
	print("E-mail: \(contact.email)")
	print("Компания: \(contact.company)")
	splitLines()

}
func contactsList() {
	if contacts.count != 0 {
		for contact in contacts {
			printContact(contact)
		}
	} else {
		splitLines()
		print("Ваш список контактов пуст. \nЧтобы добавить контакт в список, введите 1. \nДля вызова меню действий введите 3")
		splitLines()
	}
}
