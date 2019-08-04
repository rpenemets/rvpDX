public class StringArrayTest 
{
    public static String[] generateStringArray(integer n)
    {
        String[] myArray  = new List<String>();
        for(Integer i=0; i<=n; i++)
        {
            String s = 'Test' + ' ' + i;
            myArray.add(s);
        }
        System.debug(myArray);
        return myArray ;
    }
}