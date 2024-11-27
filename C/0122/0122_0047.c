#include <stdlib.h>
#include <stdio.h>
#include <math.h>


void sub();
int main()
{
  int a,b,c,d,e;
  int i;

  printf("********** 014 TEST START **********\n");
  sub(&c,&b);
  for(i=0,a=0,e=0;i<=5;i++)
    {
      a=a*c*b*2;
      e+=a+i;
    }
  if ( e == 15 )
    printf("013 OK \n");
  else 
    {
      printf("013 NG \n");
      printf("e=%d\n",e);
    }
  printf("********** 014 TEST  END  **********\n");
exit (0);
}
void sub(c,b)
  int *c,*b;
{
  *c=5;
  *b=4;
}
