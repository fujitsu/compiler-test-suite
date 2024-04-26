#include  <stdio.h>

int main()
{
  int f(char c)                                                 ;

  printf("********** TEST STARTED **********\n")    ;

  if (f('a'))
    printf("********** 01 OK **********\n")       ;
  else
    printf("********** 01 NG **********\n")       ;

  printf("********** TEST ENDED **********\n")      ;

}
int f( char c )
{
  return (c =='a') ? 1 : 0                                      ;
}
