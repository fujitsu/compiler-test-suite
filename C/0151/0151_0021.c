















  #include <stdio.h>
  #include "001.h"



  int func18(int);
  int func19(int);
  int fwork19(int);













int func18(int iarg18)
{
  return iarg18 += 1;
}







int func19(int iarg19)
{
  for(iarg19 = 0; iarg19 < 5; )
    iarg19 = fwork19( iarg19 );
  return iarg19;
}







int fwork19(int iarg1902)
{
  return iarg1902 += 1;
}




int main()
{



  char char_wk1;
  int  int_wk1;







  header("","function definion test proc no.1.");



{
  int int1801;
  for(int1801 = 0; int1801 < 10; )
    int1801 = func18( int1801 );

  ichck("FEA02_18",10,int1801,
        "recursion's call (direct) proc. test");
}



{
  int int1901 = 0;
  while( int1901 < 30 ){
    int1901 += func19( int1901 );
  }
  ichck("FEA02_19",30,int1901,
        "recursion's call (indirect) proc. test");
}





  header("","call function test proc no.1.");
}
