class Torta
	attr_accessor :type
	
	def initialize(type)
		@type = type
		@lote = []
		
	end

	def lote
		lote = []
		lote << Torta.new(type)
	end
end

class Horno
	attr_accessor :time
	
	def initialize(time)
		@time = time
	end 

	def tiempo_horneado(time)
		if time > 10
			return "La torta ya se quemó"
		elsif time < 10 && time > 10
			return "La torta ya casi esta"
		elsif time == 10
			return "La torta esta lista"
		else 
			return "La torta esta cruda"
		end	
	end
end

hawaina = Torta.new("Milanesa")
horno = Horno.new(hawaina)
tdh = horno.tiempo_horneado(15)

puts tdh
