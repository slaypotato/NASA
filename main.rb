require_relative 'sonda'
require_relative 'ui'

	texto = solicitarMalha
	malha = setCoord(texto)
	texto = solicitarPosicaoDirecao
	pos = setCoord(texto)
	dir = setDirection(texto)
	texto = solicitarComandos
	cmd = setCommands(texto)
	result = executeCommands(malha,pos,dir,cmd)
	imprimirResultados(result)