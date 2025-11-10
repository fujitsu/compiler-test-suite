#include <stdio.h>
#include "000.h"


int fxtestdsp1( double*   p, long*   q, double*   r, double*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    r[i]=p[q[i]];
  }
  return 0;
}

int fxtestdsp_scl_1( double*   p, long*   q, double*   r, double*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    r[i]=p[q[i]];
  }
  return 0;
}

int fxtestdsp2( double*   p, long*   q, double*   r, double*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    p[q[i]]=r[i];
  }
  return 0;
}

int fxtestdsp_scl_2( double*   p, long*   q, double*   r, double*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    p[q[i]]=r[i];
  }
  return 0;
}

int fxtestdsp3( long*   p, long*   q, long*   r, long*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    r[i]=p[q[i]];
  }
  return 0;
}

int fxtestdsp_scl_3( long*   p, long*   q, long*   r, long*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    r[i]=p[q[i]];
  }
  return 0;
}

int fxtestdsp4( long*   p, long*   q, long*   r, long*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    p[q[i]]=r[i];
  }
  return 0;
}

int fxtestdsp_scl_4( long*   p, long*   q, long*   r, long*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    p[q[i]]=r[i];
  }
  return 0;
}

int fxtestdsp5( int*   p, long*   q, int*   r, int*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    r[i]=p[q[i]];
  }
  return 0;
}

int fxtestdsp_scl_5( int*   p, long*   q, int*   r, int*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    r[i]=p[q[i]];
  }
  return 0;
}

int fxtestdsp6( int*   p, long*   q, int*   r, int*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    p[q[i]]=r[i];
  }
  return 0;
}

int fxtestdsp_scl_6( int*   p, long*   q, int*   r, int*   s, seltype_distance n )
{
  long i;
  for( i=0; i<100; i++){
    p[q[i]]=r[i];
  }
  return 0;
}
