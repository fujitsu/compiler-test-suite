#include <stdio.h>
#define print printf
int main()
{
  int i, j;
  i = 0;
  j = 1;
  if ( i == 0 && j == j ) {
    print("ok\n");
  }
  if ( i == 0 && j & 0 ) {

  } else {
    print("ok\n");
  }
  if ( i == 0 || j == j ) {
    print("ok\n");
  }
  if ( i == 0 || j & 0 ) {
    print("ok\n");
  } 
  if ( i == 0 && j != j ) {

  } else {
    print("ok\n");
  }
  if ( i == 0 && j | ~0 ) {
    print("ok\n");
  } else {
    ;
  }
  if ( i == 0 || j != j ) {
    print("ok\n");
  }
  if ( i == 0 || j | ~0 ) {
    print("ok\n");
  } 
}
