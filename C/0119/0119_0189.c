#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub(int i);
int main()
{
  sub(2);
exit (0);
}
int sub(i)
int i;
{
    static int j;
    if( i == 2 ) {
      for(j=0;j<10;j++)
        sub(1);
      if( j == 12 ) {
         puts(" OK \n");
      }
      else {
         puts(" NG \n");
      }
    }
    else
      j=j+3;
    return 0;
}
