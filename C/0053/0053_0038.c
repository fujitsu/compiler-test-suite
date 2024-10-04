#include<stdio.h>
int sub (int y );
int main()
{
  int a,i;
  int func();

  i = 0;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  a = func ( i );
  if ( a==0 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  a = sub ( i );
  if ( a==0 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

}

int func ( x )
int x;
{
  return 0;
}

int sub ( y )
int y;
{
  return 0;
}
