
# New só cria um objeto e depois é necessário salvar
user = User.new(name: 'aralyne', email:'aralyne@gmail.com', age: 25)
user.save

# Create
user = User.create(name: 'aralyne', email:'aralyne@gmail.com', age: 25)

# DO banco de dados
# INSERT INTO users (name, email, age) VALUES ('aralyne', 'aralyne@gmail.com', 25)