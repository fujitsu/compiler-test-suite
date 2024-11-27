#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int f1() ;
static int f2() ;

int (*p1)()=f1 ;
int (*p2)()=f2 ;
int main()
{
  printf("********** SCPII13 TEST START **********\n");
  f1() ;
  f2() ;
  printf("********** SCPII13 TEST  END  **********\n");
exit (0);
}

int f1()
{
  printf(" ********* F1  --  O K        *********\n");
}

static  int f2()
{
  printf(" ********* F2  --  O K        *********\n");
}
