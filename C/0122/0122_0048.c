#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int a,b,c,d;
void sub();
int main()
{
  printf("********** 014 TEST START **********\n");
  a=0;
  d=0;
  sub(&b);
  if(c==1) d=1;
  
  if(a==1) d=2;
  
  if(d==1)
    printf("014 OK\n");
  else
    printf("014 NG\n");
  printf("********** 014 TEST  END  **********\n");
exit (0);
}
void sub(pb)
  int *pb;
{
  *pb=1;
  c=1;
}


