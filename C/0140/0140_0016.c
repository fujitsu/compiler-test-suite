

#include <stdio.h>
#define N   30
#define ANS 89
int main()
{
  float a[N], b[N], c[N];
  float x1=(float)0.0, x2=(float)0.0;
  float sum;
  int   i;

  for ( i = 0; i < N; i++ ) {
    a[i] = (float)i /(float)10000.0;
    b[i] = (float)i /(float)20000.0;
    c[i] = (float)0.0;
  }

  for ( i = 0; i < N; i++ ) {
    x1 += a[i] - b[i];
    x2 += a[i] + b[i];
    c[i] = (x1 + x2)*(float)100.0;
  }

  
  sum = 0.0;
  for ( i = 0; i < N; i++ ) {
    sum = sum + c[i];
  }

  if ( (int)sum == ANS )
    printf( "*** sum OK ***\n" );
  else
    printf( "*** sum NG ***\n" );
}
