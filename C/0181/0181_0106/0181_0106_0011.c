

#include <stdio.h>
#include <stdlib.h>

#define ROOP_MAX 1000
#define ELEMENT_NUM 1000
#define ANSWER 2000
#define PERMISSIBLE 0

void fgZeroPart2(int * restrict a, int * restrict b, int n)
{
  int i = 0;
  int di = 0;
  for ( i = 0; i < n; i++ )
  {
    a[i] = a[i+di] + b[i];
  }
}

int lto_sub_12(void) 
{
  int a[ELEMENT_NUM];
  int b[ELEMENT_NUM];
  int i,r;

  for ( i = 0; i < ELEMENT_NUM; i++ )
  {
    a[i] = 1;
    b[i] = 1;
  }

  fgZeroPart2(a,b,ROOP_MAX);

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

