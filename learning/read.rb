#find - Retorna o id passado
user = User.find(2)

#find_by - Retorna o atributo passado (retorna apenas um objeto)
user = User.find_by(name: 'aralyne')

#where - Retorna uma lista de usuários com idade iqual a 11 (retorna um array de objetos) ActiveRecord::Relation
user = User.where(age: 11)