Dado(/^que o usuario esta no google$/) do
	#Acessa o google
	visit 'https://www.google.com.br/?gws_rd=ssl'	
end

Quando(/^busca por Santander$/) do
	#Busca santander e da enter
	find(:id, 'lst-ib').set("Santander\n")
	sleep(3) 
end

Quando(/^acessa um resultado que contenha palavra santander$/) do
  	#Clicka no primeiro link que contem santander
  	first(:link, 'Santander').click
end

Então(/^visualiza  as informações de contato da central de atendimento$/) do
	#Encontra o elemento 'Central'
	find(:id, 'central').click
	#Verifica o texto da central na pagina
	assert_text('Consultas, informações')
	sleep(3)
end