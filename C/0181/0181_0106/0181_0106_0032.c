
#include <stdio.h>
#include <stdlib.h>

#define ROOP_MAX 100
#define ELEMENT_NUM 100
#define ANSWER 17170000
#define PERMISSIBLE 0

void fgIM2JP2(int (* restrict a)[ELEMENT_NUM][ELEMENT_NUM], 
              int (* restrict b)[ELEMENT_NUM][ELEMENT_NUM],
              size_t n)
{
  size_t di = 2;
  size_t dj = 2;

  
  for (size_t i = di; i < n; i++ )
  {
    for (size_t j = 0; j < n-dj; j++ )
    {
      for (size_t k = 0; k < n; k++ )
      {
         a[i][j][k] = a[i-di][j+dj][k] + b[i][j][k];
      }
    }
  }


}

int lto_sub_33(void) 
{
  int a[ELEMENT_NUM][ELEMENT_NUM][ELEMENT_NUM];
  int b[ELEMENT_NUM][ELEMENT_NUM][ELEMENT_NUM];
  size_t i,j,k;
  double r;

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

  fgIM2JP2(a,b,ROOP_MAX);

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

  if (abs(r - ANSWER) <= PERMISSIBLE) {
    printf("%s\n", "ok");
  } else {
    printf("%s : r=%f\n", "ng", r);
  }
  
  return 0;
}



