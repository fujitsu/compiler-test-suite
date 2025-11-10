


#include <stdio.h>
#include <stdlib.h>

#define ROOP_MAX 1000
#define ELEMENT_NUM 1000
#define ANSWER 1998
#define PERMISSIBLE 0

void fgPlus2(int * restrict a, int * restrict b, int n)
{
  int i = 0;
  int di = 2;
  for ( i = 0; i < n-2; i++ )
  {
    a[i] = a[i+di] + b[i];
  }
}

int lto_sub_8(void) 
{
  int a[ELEMENT_NUM];
  int b[ELEMENT_NUM];
  int i,r;

  for ( i = 0; i < ELEMENT_NUM; i++ )
  {
    a[i] = 1;
    b[i] = 1;
  }

  fgPlus2(a,b,ROOP_MAX);

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

