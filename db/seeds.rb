# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Lucas', username: 'lucdelrio', email: 'lucas.delrio@gmail.com', password: 'lucas123456')
User.create(name: 'Emanuel', username: 'manuginobili', email: 'manuginobili@sanantonio.com', password: 'manuginobili04')

BankAccount.create(name: 'Santander', user_id: 1)

Currency.create(name: 'dolar estadounidense', bank_account_id: 1)

BankAccount.create(name: 'Francés', user_id: 2)
Currency.create(name: 'dolar australiano', bank_account_id: 2)