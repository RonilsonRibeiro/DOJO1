#language: pt
#utf-8

Funcionalidade: Acessar informacoes de contato Santander
	Eu como cliente 
	Quero acessar o site do Santander através do google
	Para visualizar as informações de contato da central de atendimento

	Cenário: Acessar informacoes através do google
	 Dado 	que o usuario esta no google
	 Quando busca por Santander
	 E  	acessa um resultado que contenha palavra santander
	 Então 	visualiza  as informações de contato da central de atendimento	