
#include <stdio.h>
int a,b,c,d;
void sub();
int main()
{
  printf("**********  TEST START **********\n");
  a=0;
  d=0;
  sub(&b);
  if(c==1) d=1;
  if(a==1) d=2;
  
  if(d==1)
    printf(" OK\n");
  else
    printf(" NG\n");
  printf("**********  TEST  END  **********\n");
}
void sub(pb)
  int *pb;
{
  *pb=1;
  c=1;
}


