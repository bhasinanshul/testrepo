@isTest
public class SampleDeployClass {

    public static testmethod void t1() {
        helloMethod();

        Account acc = new Account(Name= 'fred');
        insert acc; // hit the trigger
		// Vinod : My comment
        // Check that the trigger properly set the phone field:
	//Anshul merge
	//Anshul changes2
	//Anshul changes 3
	//Anshul changes 4
	//Anshul automation
	//Anshul merge2
	//Anshul merge345
	//Anshul push to github
	//Anshul push to github less than a minute compare to previuos commit
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
