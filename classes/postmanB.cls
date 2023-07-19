public class postmanB{ 
    public static void dataCallFromB(){
    http ht=new http();
    httprequest req=new httprequest();
    string endpoints='https://iwant-dev-ed.my.salesforce.com/services/apexrest/postman';
    req.setHeader('Authorization','Bearer !AR0AQPFoJBn12TBkyte8Z2g8ohqzEY1cheY0TbNx42w69hdlniqCl8BNtSu_qDyaUUoDmkMM4YG2PjilumxNN8A_1N2ezTPN');
    req.setEndpoint(endpoints);
    req.setMethod('GET');
    httpresponse res=ht.send(req);
    system.debug(res.getbody());

        
    } 
}