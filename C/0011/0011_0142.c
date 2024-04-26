#include  <stdio.h>

int f1() ;
static int f2() ;

int (*p1)()=f1 ;
int (*p2)()=f2 ;
int main()
{
  printf("********** TEST START **********\n");
  f1() ;
  f2() ;
  printf("**********  TEST  END  **********\n");
}

int f1()
{
  printf(" ********* F1  --  O K        *********\n");
  return 0;
}

static  int f2()
{
  printf(" ********* F2  --  O K        *********\n");
  return 0;
}
