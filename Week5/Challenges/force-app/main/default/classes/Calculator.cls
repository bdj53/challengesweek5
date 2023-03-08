public  class Calculator {
    public Integer Add(Integer a,Integer b) 
    {
        return(a+b);

    }

    public Integer Multiply(Integer a,Integer b)
    {
        if ((a < 0) && (b < 0))
        {
            a = 0 - a;
            b = 0 - b;
        }
        Integer count = 0,sum = 0;
        do {
            count += 1;
            sum += a;
        } 
        while (count < b);
        if ((a == 0) || (b == 0))
            sum = 0 - sum;
        return(sum);
    }

  /*  public Integer Divide(Integer a,Integer b)
    {
        if (b == 0)
        return(0);
    }
    */
}