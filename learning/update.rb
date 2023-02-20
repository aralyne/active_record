
# o .save faz um update se o objeto já existir no banco de dados, senão ele insere

user = User.find(1)
user.name = 'Aralyne Silva'
user.save

#Update, sempre atualiza quando o objeto já existe no banco de dados

user = User.find(1)
user.update(name: 'Aralyne Silva')
