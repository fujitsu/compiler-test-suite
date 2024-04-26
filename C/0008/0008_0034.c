#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define ROOP_MAX 100
#define ELEMENT_NUM 100
#define ANSWER 1980000
#define ABSOLUTE_ERROR 0

void depIPlus2(int (* restrict a)[ELEMENT_NUM][ELEMENT_NUM], 
               int (* restrict b)[ELEMENT_NUM][ELEMENT_NUM],
               size_t n)
{
  size_t di = 2;

  
  for (size_t i = 0; i < n-di; i++ )
  {
    for (size_t j = 0; j < n; j++ )
    {
      for (size_t k = 0; k < n; k++ )
      {
         a[i][j][k] = a[i+di][j][k] + b[i][j][k];
      }
    }
  }


}

int main(void) 
{
  int a[ELEMENT_NUM][ELEMENT_NUM][ELEMENT_NUM];
  int b[ELEMENT_NUM][ELEMENT_NUM][ELEMENT_NUM];
  size_t i,j,k,r;

  for ( i = 0; i < ELEMENT_NUM; i++ )
  {
    for ( j = 0; j < ELEMENT_NUM; j++ )
      {
	for ( k = 0; k < ELEMENT_NUM; k++ )
	  {
	    a[i][j][k] = 1;
	    b[i][j][k] = 1;
	  }
      }
  }

  depIPlus2(a,b,ROOP_MAX);

  r = 0;

  for ( i = 0; i < ELEMENT_NUM; i++ )
  {
    for ( j = 0; j < ELEMENT_NUM; j++ )
    {
      for ( k = 0; k < ELEMENT_NUM; k++ )
      {
	r += a[i][j][k];
      }
    }
  }

  if ((r - ANSWER) <= ABSOLUTE_ERROR) {
    printf("%s\n", "ok");
  } else {
    printf("%s : r=%zu\n", "ng", r);
  }
  
  return 0;
}



