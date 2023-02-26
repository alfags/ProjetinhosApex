trigger atualizandoCampos on Account (before update) {

    /*Para economizar linhas de código vamos somente usar o método que queremos que é o update */

    List<Account> lstContas = new List<Account>();
    set<ID> ids = new Set<ID>();
    
    for(Account acc : Trigger.new){
      if(acc.Site != null){
           lstContas.add(acc);
           ids.add(acc.Id);
    }
    }
    List<Contact> listaContatos = new List<Contact>();
    for(Account acc : lstContas){
      List<Contact> lista =[SELECT Id, Department FROM contact WHERE AccountId = : acc.Id];
    
    for(Contact ct : lista){
    ct.Department = acc.Site;
    listaContatos.add(ct);
    }
    }
    update listaContatos;
   

}