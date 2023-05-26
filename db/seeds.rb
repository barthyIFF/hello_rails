# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Usuario e senha
User.create! email: 'atleta@teste.com.br', password: '12345678', usuario: 'atleta', papel: 'atleta'
User.create! email: 'instrutor@teste.com.br', password: '12345678', usuario: 'instrutor', papel: 'instrutor'

Adm.create! email: 'adm@teste.com.br', password: '12345678'

