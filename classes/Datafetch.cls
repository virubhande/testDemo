public with sharing class Datafetch {
    //send rajdeep org to main org by copado

    
    @auraEnabled
    public static list<contact> conlist(){
        list<contact> conData=[Select LastName,id,Email from contact WITH SECURITY_ENFORCED ];
        return conData;
    }
}