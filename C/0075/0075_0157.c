#include <stdio.h>

void sub();
int main()
{
  int a,b,c,d,e;
  int i;

  printf("**********  TEST START **********\n");
  sub(&c,&b);
  for(i=0,a=0,e=0;i<=5;i++)
    {
      a=a*c*b*2;
      e+=a+i;
    }
  if ( e == 15 )
    printf(" OK \n");
  else 
    {
      printf(" NG \n");
      printf("e=%d\n",e);
    }
  printf("**********  TEST  END  **********\n");
}
void sub(c,b)
  int *c,*b;
{
  *c=5;
  *b=4;
}
