#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <stdio.h>
int main()
{
 int i,j,k,chk;

 chk = 0;
 for (i=0;i<10;i++){
     for (j=0;j<10;j++){
         for (k=0;k<10;k++){
                 chk +=
                  (((i+1)*(i+1) - (i*i + 2*i + 1) + j)
                   * ((i+1)*(i+1) - (i*i + 2*i + 1) + j)
                   + 2 * ((i+1)*(i+1) - (i*i + 2*i + 1) + j)
                   + 1)
                  -(j+1)*(j+1)
                  +
                  (((j+1)*(j+1) - (j*j + 2*j + 1) + k)
                   * ((j+1)*(j+1) - (j*j + 2*j + 1) + k)
                   + 2 * ((j+1)*(j+1) - (j*j + 2*j + 1) + k)
                   + 1)
                  -(k+1)*(k+1)
                  +
                  (((k+1)*(k+1) - (k*k + 2*k + 1) + i)
                   * ((k+1)*(k+1) - (k*k + 2*k + 1) + i)
                   + 2 * ((k+1)*(k+1) - (k*k + 2*k + 1) + i)
                   + 1)
                  -(i+1)*(i+1)
                  +1;
         }
         chk -= k-1;
     }
 }
 if( chk == 100 ) puts(" SCRLP44 OK ");
 else               puts(" SCRLP44 NG ");
exit (0);
}
