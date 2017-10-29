require_relative 'ui'

def setCommands(commands)
	commands.chars
end

def convertDirection(direction)
	cardinal = {
		"N" => [0,+1],
		"E" => [+1,0],
		"S" => [0,-1],
		"W" => [-1,0]
	}
	direcao = cardinal[direction]
end

def setCoord (texto)
	if texto.include? ","
		@result = texto.split ","
		@result = @result.map do |coord|
			coord.to_i
		end

	else
		throw_error ("Coloque 2 valores separados por virgula")
		@result = nil
	end
	@result
end

def setDirection (texto)
	var = texto.split ","
	return var[var.size-1]
end

def checkVariable (var)
	if var.nil?
		throw_error ("Variavel nula")
		return false
	else
		return true
	end
end

def setNewDirection(instruction,dir)
	direction = ["W","N","E","S"]
	ind = direction.index(dir)
	case instruction
	when "R"
		ind += 1
		if ind >= direction.size
			ind = 0
		end
	when "L"
		ind -= 1
		if ind < 0
			ind = direction.size-1
		end
	end
	direction[ind]
end

def move(pos,dir,malha)
	direction = convertDirection(dir)
	movement = [pos[0]+direction[0],pos[1]+direction[1]]
end


def executeCommands(malha,pos,dir,cmd)
	checkVariable(malha)
	checkVariable(pos)
	checkVariable(dir)
	checkVariable(cmd)
	if malha.zip(pos).all?{|malha,pos|malha > pos}
		for instruction in cmd
			case instruction
			when "M"
				pos = move(pos,dir,malha)
			when "L" || "R"
				dir = setNewDirection(instruction,dir)
			else
				throw_error("#{instruction} não é um comando valido")
			end
		end
		return "#{pos[0]},#{pos[1]},#{dir}"
	else
		throw_error("Posicao Fora de escopo")
	end
end