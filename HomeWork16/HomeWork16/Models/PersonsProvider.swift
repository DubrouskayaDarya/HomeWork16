//
//  PersonsProvider.swift
//  HomeWork16
//
//  Created by Дарья Дубровская on 11.02.22.
//

import Foundation

protocol PersonsProviderType {
    var persons: [Person] { get }
}

class PersonsProvider: PersonsProviderType {
    var persons: [Person] = [
        Person(name: "Мария", surName: "Петрова", email: "mar@gmail.com", phone: "+37529 111 34 59"),
        Person(name: "Михаил", surName: "Семенов", email: "mi@gmail.com", phone: "+37529 111 34 55"),
        Person(name: "Павел", surName: "Васильев", email: "pav@gmail.com", phone: "+37529 222 34 55"),
        Person(name: "Леонид", surName: "Максимов", email: "leo@gmail.com", phone: "+37529 333 34 55"),
        Person(name: "Симон", surName: "Афанисьев", email: "sim@gmail.com", phone: "+37529 444 34 55"),
        Person(name: "Вера", surName: "Петрова", email: "ver@gmail.com", phone: "+37529 555 34 59"),
        Person(name: "Михаил", surName: "Качанов", email: "miсhail@gmail.com", phone: "+37529 666 34 55"),
        Person(name: "Иван", surName: "Васильев", email: "ivan@gmail.com", phone: "+37529 777 34 55"),
        Person(name: "Леонид", surName: "Понкратов", email: "leopon@gmail.com", phone: "+37529 888 34 55"),
        Person(name: "Станислав", surName: "Пилимонов", email: "stan@gmail.com", phone: "+37529 999 34 55"),
        Person(name: "Карина", surName: "Стек", email: "kar@gmail.com", phone: "+37529 111 11 59"),
        Person(name: "Степан", surName: "Макров", email: "st@gmail.com", phone: "+37529 111 22 55"),
        Person(name: "Магдалина", surName: "Веселая", email: "mag@gmail.com", phone: "+37529 222 33 55"),
        Person(name: "Феофаний", surName: "Грустный", email: "feof@gmail.com", phone: "+37529 333 44 55"),
        Person(name: "Роберт", surName: "Четкий", email: "rob@gmail.com", phone: "+37529 444 55 55"),
        Person(name: "Полина", surName: "Власова", email: "pol@gmail.com", phone: "+37529 111 66 59"),
        Person(name: "Марина", surName: "Порохова", email: "mar@gmail.com", phone: "+37529 111 77 55"),
        Person(name: "Богдан", surName: "Пахомов", email: "bog@gmail.com", phone: "+37529 222 88 55"),
        Person(name: "Игорь", surName: "Струневский", email: "ig@gmail.com", phone: "+37529 333 99 55"),
        Person(name: "Дмитрий", surName: "Добродский", email: "dm@gmail.com", phone: "+37529 444 00 55")
    ]
}
