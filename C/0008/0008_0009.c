#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define ROOP_MAX 1000
#define ELEMENT_NUM 1000
#define ANSWER 1998
#define ABSOLUTE_ERROR 0

void depLiteral(int * restrict a, int * restrict b, int n)
{
  int i = 0;

  for ( i = 0; i < n-2; i++ )
  {
    a[i] = a[i+2] + b[i];
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

  depLiteral(a,b,ROOP_MAX);

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

