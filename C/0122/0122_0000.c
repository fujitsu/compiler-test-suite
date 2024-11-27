#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int i, j;
  i = 0;
  j = 1;
  if ( i == 0 && j == j ) {
    printf("ok\n");
  }
  if ( i == 0 && j & 0 ) {

  } else {
    printf("ok\n");
  }
  if ( i == 0 || j == j ) {
    printf("ok\n");
  }
  if ( i == 0 || j & 0 ) {
    printf("ok\n");
  } 
  if ( i == 0 && j != j ) {

  } else {
    printf("ok\n");
  }
  if ( i == 0 && j | ~0 ) {
    printf("ok\n");
  } else {
    ;
  }
  if ( i == 0 || j != j ) {
    printf("ok\n");
  }
  if ( i == 0 || j | ~0 ) {
    printf("ok\n");
  } 
exit (0);
}
