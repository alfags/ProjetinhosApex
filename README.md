# PROJETO ATUALIZANDO CAMPOS ☁️

<div align="center">
<img src="img/logoGit2.png"
height="200px">
</div>
<br>
<br>

Olá, tudo bem? 🤓<br>
Estou estudando a plataforma Salesforce e automaticamente a linguagem Apex. Este é o meu primeiro projeto criado com a intenção de ser direcionado para o GitHub. Nesse README vou explicar cada linha de código implementado, vou explicar a funcionalidade desse código dentro da plataforma Salesforce e entre outras coisas.

## O Que Será Feito Nesse Projeto: 📁
Dentro da plataforma Salesforce ha um objeto chamado "Conta" dentro desse objeto se encontra um campo chamado "Local da Conta". Vamos atualizar esse campo inserindo algum valor, salvando automaticamente o código vai ter que ir no outro objeto "Contato" e atualizar o campo "Departamento" com o mesmo valor que foi inserido no campo "Local da Conta".<br>

## Explicando Linha a Linha do Código: 📋


<div align="center">

### ✏️ trigger atualizandoCampos on Account (before update) {
  <br>
</div>
|-> Nessa linha de código estamos iniciando a trigger logo em seguida temos o nome dado por mim a essa trigger (Você pode colocar qualquer nome que achar melhor);<br>
|-> "on Account" significa que esse código sera direcionado ou objeto Conta (Account é o seu nome de API);<br>
|->(before update) significa <br>
<br>


<div align="center" >

### ✏️List<Account> lstContas = new List<Account>();<br>

</div>
|-> A qui estamos criando uma variável do tipo Account e instanciando ela.<br> 
|-> Criei essa lista para que ele receba os novos registros.<br>
<br>


 <div align="center">
 
 ### ✏️ for(Account acc : Trigger.new){<br>
 ### ✏️ if(acc.Site != null){<br>
 ### ✏️ lstContas.add(acc);<br>
 ### ✏️ ids.add(acc.Id);<br>
 ### ✏️ }<br>
</div>
  |->Aqui nós vamos interar sobre os novos registros;<br>
  |->trigger.New => São os registros que os usuários estão atualizando para ter ação neles.<br>
  |-> Logo em seguida estamos verificando se o campo esta vazio<br>
  📌 (IMPORTANTE: No desenvolvimento não utilizamos o nome do campo e sem o nome da API); por isso estamos utilizando "Site" qie é o nome de API do campo "Local da Conta";<br>
  |->Em seguida estamos recebendo os novos redistros e IDs.<br>
<br>



<div align="center">

### ✏️ List<Contact> listaContatos = new List<Contact>();<br>
### ✏️ for(Account acc : lstContas){<br>
###  ✏️List<Contact> lista =[SELECT Id, Department FROM contact WHERE AccountId = : acc.Id];<br>
</div>
  |-> Agora vamos selecionar os coontatos usando o método de interala a esta lista.<br>
  |-> Vamos selecionar os registros com o campo modificado "Deparment" no objero contato.<br> 
  |-> Colocamos também o registro pra somente aquele campo que esta sendo modificado.<br>
  <br>


<div align="center">

###   ✏️ for(Contact ct : lista){<br>
###  ✏️ ct.Department = acc.Site;<br>
###  ✏️ listaContatos.add(ct);<br>
###  ✏️ }
</div>
|-> Agora vamos interar sobre essa lista, vamos dizer que o campo "Deparment" é o mesmo campo do campo que estamos modificando. <br>
|-> Logo em seguida vamos adicionar um por um usando o nome da listaContato.<br>
<br>


<div align="center">

###  ✏️ update listaContatos;<br>
</div>
 |-> Aqui estamos atualizando a os registros adicionados. 

<br>
<br>
<br>
<br>
<br>
<div align="center">
<img src="img/logoAlfa.png"
height="200px">
</div>


## Explicando emojis: 
🤓 = Um "olá" nerd; <br>
✏️ = Linha do código;<br>
📌 = Informação importante;<br>
📁 = Representividade apenas simbolica para indicar a pasta do projeto;<br>




    

