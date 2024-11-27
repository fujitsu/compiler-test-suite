#include <stdio.h>

int main()
{
  int i,j,n;
  for( n = 1; n<=2; n++ ) {
    if ( n > 1 ) {
      j = i;
      i++;
    } else {
      i = 0;
      j = i;
    }
    printf("j =%d\n", j);
  }
  return 0;
}
