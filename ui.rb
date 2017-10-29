def solicitarMalha
	puts "Insira as coordenadas da malha(x,y)"
	malha = gets.strip
end

def solicitarPosicaoDirecao
	puts "Insira posição da sonda e a letra referente a posição separados por virgulas x,y,Letra"
	puts "N = Norte, E = Leste, W = Oeste, S = Sul"
	texto = gets.strip
end

def solicitarComandos
	puts "Insira a sequencia de comandos"
	cmd = gets.strip
end

def imprimirResultados res
	puts "Saida: #{res}"
end

def throw_error texto
	puts "Erro: #{texto}"
end