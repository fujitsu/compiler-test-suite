#include <stdio.h>
int sub(int i);
int main()
{
  printf("**********  TEST START **********\n");
  printf ("OK\n");
  sub( 1 ) ;
  printf("**********  TEST  END  **********\n");
  
}


int sub(int i)
{
  ( i == 1 || i == 2 ) ? 0 : printf("NG\n");
}

