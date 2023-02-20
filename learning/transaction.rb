# transactions no Rails é uma maneira de assegrar que uma operação no banco de dados só 
# irá acontecer se todo o bloco rodar corretamente. Do contrário, haverá um rollback para seu estado anterior
# Uma transaction depende de um Rails Execption seja levantado para poder executar o rollback

