
 
#include <stdio.h>	
#include <stdlib.h>

#define ROOP_MAX 1000
#define ELEMENT_NUM 1000
#define ANSWER 2000
#define PERMISSIBLE 0

void fgUnknown( int * restrict a,
                int * restrict b,
                int * restrict c,
                int n )
{
  int i = 0;

  for ( i = 0; i < n; i++ )
  {
    a[ c[i] ] = a[ c[i] ] + b[ c[i] ];
  }
}

int lto_sub_10(void) 
{
  int a[ELEMENT_NUM];
  int b[ELEMENT_NUM];
  int c[ELEMENT_NUM];
  int i,r;

  for ( i = 0; i < ELEMENT_NUM; i++ )
  {
    a[i] = 1;
    b[i] = 1;
    c[i] = 1;
  }

  fgUnknown(a,b,c,ROOP_MAX);

  r = 0;
  for ( i = 0; i < ELEMENT_NUM; i++ ) {
    r += a[i];
  }

  if (abs(r - ANSWER) <= PERMISSIBLE) {
    printf("%s\n", "ok");
  } else {
    printf("%s : r=%d\n", "ng", r);
  }
  
  return 0;
}


