@isTest
public class SampleDeployClass {

    public static testmethod void t1() {
        helloMethod();

        Account acc = new Account(Name= 'fred');
        insert acc; // hit the trigger
		// Vinod : My comment
        // Check that the trigger properly set the phone field:
	//Anshul comment 
//Anshul cherypick1
//Anshul automation 2222255
//branch1 line1
//branch1 line2
//branch2 line3
//branch2 line4
//branch2 line7
//branch2 line8 Anshul
//branch2 word1 word2
//branch2 word3 word4
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }

    public static String getPhone() {
        return 'SamplePhone#';
    }
    
    public static void helloMethod() {
        System.debug('Hello World');
    }
}
