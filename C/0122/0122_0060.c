#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int i);

int main()
{
  printf("********** 030 TEST START **********\n");
  printf ("OK\n");
  sub( 1 ) ;
  printf("********** 030 TEST  END  **********\n");
  
exit (0);
}


int sub(int i)
{
  ( i == 1 || i == 2 ) ? 0 : printf("NG\n");
}

