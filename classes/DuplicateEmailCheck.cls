public class DuplicateEmailCheck {
    public static void checkEmail(list<contact> conList){
        set<string> lastName=new set<string>();
        for(contact con:conList){
            lastName.add(con.lastname);
            
        }
        list<contact> contEmail=[select id,lastname,email from contact where lastname=:lastName];
        for(contact con:conList){
            if(contEmail.size()!=0){
                con.addError('! Duplicate emails are not allowed');
            }
        }
       
    }
    public static void UpdateAccountFromContact(list<contact> conData){
        map<id,string> accountContactMap=new map<id,string>();
        for(contact con:conData){
            accountContactMap.put(con.AccountId,con.phone);
        }
        list<account> acc=[select id,phone from account where id in:accountContactMap.keySet()];
        for(account accData:acc){
            if(accountContactMap.containskey(accData.id)) {
            accData.phone=accountContactMap.get(accData.id);
        }
        }
    }
}