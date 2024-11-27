#include <stdio.h>
#include <math.h>
float a[100][100][100],b[100][100][100],c[100][100][100];
int i,j,k;
int main()
{
  for( i = 0 ; i <= 99 ; i++ ){
     for( j = 0 ; j <= 99 ; j++ ){
        for( k = 0 ; k <= 99 ; k++ ){
           a[i][j][k] = sin( (float)i * (float)j * (float)k );
           b[i][j][k] = cos( (float)i * (float)j * (float)k );
           c[i][j][k] = a[i][j][k] + b[i][j][k];
         }
      } 
   }
}
