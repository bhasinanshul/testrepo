@isTest
public class SampleFailingTestClass {
//Anshul comment
//Anshul changes 2
//Anshul cherypick2
    public static testmethod void failingTest() {
        Account acc = new Account(Name= 'fred');
        insert acc;
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals('867-5309', retAcc.phone); // Always fails.
    }
}