#include <math.h>

#include <stdio.h>
#include <stdlib.h>

#define ROOP_MAX 1000
#define ELEMENT_NUM 1000
#define ANSWER 2000
#define ABSOLUTE_ERROR 0

void depMissing(int * restrict a, int * restrict b, int n)
{
  int i = 0;
  int foo = 5;

  for ( i = 0; i < n; i++ )
  {
    a[foo] = a[foo] + b[foo];
  }
}

int main(void) 
{
  int a[ELEMENT_NUM];
  int b[ELEMENT_NUM];
  int i,r;

  for ( i = 0; i < ELEMENT_NUM; i++ )
  {
    a[i] = 1;
    b[i] = 1;
  }

  depMissing(a,b,ROOP_MAX);

  r = 0;
  for ( i = 0; i < ELEMENT_NUM; i++ ) {
    r += a[i];
  }

  if (abs(r - ANSWER) <= ABSOLUTE_ERROR) {
    printf("%s\n", "ok");
  } else {
    printf("%s : r=%d\n", "ng", r);
  }
  
  return 0;
}
