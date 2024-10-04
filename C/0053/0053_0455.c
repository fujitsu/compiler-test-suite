#include<stdio.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + 
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) 
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m4(x) m3(x) + m3(x)                           
int main()
{
  printf("********** \n");
  {
    {
      int a = 'a';

      if (a == 'a')
          printf("***** \n");
    }
    {
      int a='b';

      if (a == 'b')
          printf("***** \n");
    }
    {
      int z = 0 + 0 + m4(0); int a = 'c';

      if (a == 'c')
          printf("***** \n");
    }
    {
      int z = 0 + 0 + 0 +m4(0);int a='d';

      if (a == 'd')
          printf("***** \n");
    }
  }
  {
    {
      int a = 'efg';

      if (a == 'efg')
          printf("***** \n");
    }
    {
      int a='hij';

      if (a == 'hij')
          printf("***** \n");
    }
    {
      int z = 0 + 0 + m4(0); int a = 'klm';

      if (a == 'klm')
          printf("***** \n");
    }
    {
      int z = 0 + 0 + 0+m4(0); int a='nop';

      if (a == 'nop')
          printf("***** \n");
    }
  }
  {
    {
      unsigned int a = 'qrst';

      if (a == 'qrst')
          printf("***** \n");
    }
    {
      unsigned int a='uvwx';

      if (a == 'uvwx')
          printf("***** \n");
    }
    {
      int z = m4(0);unsigned int a = 'yz01';

      if (a == 'yz01')
          printf("***** \n");
    }
    {
      int z = m4(0); unsigned int a='2345';

      if (a == '2345')
          printf("***** \n");
    }
  }
  printf("********** \n");
}
