object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var golosinas =[ ]
	var golosinasDesechadas=[]
	method comprar(unaGolosina){golosinas.add(unaGolosina)}
	
	method comprarVarias(lista){golosinas.addall(lista)}
	
	method vaciasBolsa(){golosinas.clear()}
	
	
	
	method cantidadDeGolosinas()=golosinas.size()
	
	method tieneGolocina(unaGolosina)=golosinas.contains(unaGolosina)
	
	method probarGolosina(){
		golosinas.forEach({g=>g.mordisco()})
	}
	//method hayGolosinaSinTACCAll()= 
		//golosinas.all({g=> not g.libreGluten()}) 
	
	method hayGolosinaSinTACC()= 
		not golosinas.any({g=>  g.libreGluten()})
		
	method preciosCuidados()=
		golosinas.all{g => g.precio() <= 10} 
		//bool
		
	method preciosCuidadosAny()=
		not golosinas.any{g => g.precio() > 10} 
		//bool
		
	method golosinasDeSabor(unSabor)=
		golosinas.find({g => g.gustos()==unSabor})
		
	method goloainasDeSabor(unSabor)=
		golosinas.filter{g=>g.gustos()==unSabor}
		
	method sabores()= golosinas.map({g => g.gustos()}).asSet()
	
	method golosinaMasCara()= 
			golosinas.max({g => g.precio()})
		
	method precioGolosinaMasCara()= self.golosinaMasCara().precio()
	
	method pesoGolosina() = golosinas.sum({g=> g.peso()})
	
	method golosinasFaltante(golosinaDeseadas) = 
			golosinaDeseadas.asSet().difference(golosinas.asSet())
	
	method golosinasFaltante2(golosinaDeseadas) = 
			golosinas.asSet().difference(golosinaDeseadas.asSet())
			
	method gustosFaltantes(gustosDeseados)=
			gustosDeseados.asSet().difference(self.sabores())
	//desafos extre
	method gastoEn(sabor) =  
		self.golosinasDeSabor(sabor).sum({g => g.precio()})
		
	method precioGolosinaMasCaraDeUnSabor(sabor)=
		self.golosinasDeSabor(sabor).max({g=>g.precio()}).precio()
		
	method cantGolosinasDeUnSabor(unSabor)=
			self.golosinasDeSabor(unSabor).size()
	
	method saborMasPopular()=
			self.sabores().max({sabor => self.cantGolosinasDeUnSabor(sabor)})
		
	method desechar(unaGoosina){
		golosinas.add()
		golosinasDesechadas.remove()}
		
	method comproYDesecho(golosina)=
			golosinasDesechadas.contains(golosina)
	
}