#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func2(int x);
int func1();
int main()
{
  int a,i,j,k;
 
  i = 1;
  j = 2;
  k = 3;
 
  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM  CATEGORY   *\n");
  printf("*                            *\n");
  printf("******************************\n");
 
  a = func1();
  if ( a==0 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
 
  a = func2(i);
  if ( a==0 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
 
  a = i + ( j+k );
  if ( a==6 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
 
exit (0);
}
 
int func1()
{
  return 0;
}
 
int func2(x)
int x;
{
  return 0;
}
