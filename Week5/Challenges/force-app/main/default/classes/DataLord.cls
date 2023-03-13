public class DataLord {
    
    public Double NumHot()
    {
        Double ret;
        ret = 0;
        AggregateResult myResult = [SELECT Count(id) FROM ACCOUNT WHERE Rating = 'Hot'];
        ret = myResult.get('expr0');
        return(ret);
    }

    public Double NumAccounts()
    {
        Double ret;
        AggregateResult myResult = [SELECT COUNT(id) FROM ACCOUNT];
        ret = myResult.get('expr0');
        return(ret);
    }
   
    public Integer NumComplex()
    {
        List<Account> ls = new List<Account>();
List<String> newList = new List<String>();
ls = [Select Name from Account];
for (Integer i = 0;i < ls.size();i++)
{
    newList.add(ls[i].Name);
}

Integer add = 0;
for (Integer i = 0;i < newList.size();i++)
{
    
    if (newList[i].contains('&')) add +=1;
}
   return(add);
}

}