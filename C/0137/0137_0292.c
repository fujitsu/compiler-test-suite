#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int inc();
int sub2();
int sub1();

int i;
int main()
{
  printf("***** unroll021 ***** unroll 1 never 1 not 0\n");
  sub1();
  sub2();
  printf("ok\n");
  printf("***** unroll021 ***** end\n");
exit (0);
}    
int sub1()
{
  int c=0;
  for(i=0;i<10;i++)
    {
      c++;
    }
  if(i!=10)
    printf("ng1\n");
  if(c!=10)
    printf("ng2\n");
}
int sub2()
{
  int c=0;
  for(i=0;i<10;i++)
    {
      c++;
      inc();
    }
  if(i!=10)
    printf("ng3\n");
  if(c!=5)
    printf("ng4\n");
}

int inc()
{
  i++;
}


