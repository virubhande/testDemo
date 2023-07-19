public with sharing class Datafetch {
    @auraEnabled
    public static list<contact> conlist(){
        list<contact> conData=[Select LastName,id,Email from contact WITH SECURITY_ENFORCED ];
        return conData;
    }
}