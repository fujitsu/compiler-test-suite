
#include <stdio.h>
#include <stdlib.h>

#define ROOP_MAX 100
#define ELEMENT_NUM 100
#define ANSWER 2000000
#define PERMISSIBLE 0

void fgIUnknown(int (* restrict a)[ELEMENT_NUM][ELEMENT_NUM], 
              int (* restrict b)[ELEMENT_NUM][ELEMENT_NUM],
              int * restrict c, 
              size_t n)
{
  
  for (size_t i = 0; i < n; i++ )
  {
    for (size_t j = 0; j < n; j++ )
    {
      for (size_t k = 0; k < n; k++ )
      {
         a[ c[i] ][j][k] = a[ c[i] ][j][k] + b[ c[i] ][j][k];
      }
    }
  }


}

int lto_sub_31(void) 
{
  int a[ELEMENT_NUM][ELEMENT_NUM][ELEMENT_NUM];
  int b[ELEMENT_NUM][ELEMENT_NUM][ELEMENT_NUM];
  int c[ELEMENT_NUM];
  size_t i,j,k;
  double r;

  for ( i = 0; i < ELEMENT_NUM; i++ )
  {
    c[i] = 1;
    for ( j = 0; j < ELEMENT_NUM; j++ )
      {
	for ( k = 0; k < ELEMENT_NUM; k++ )
	  {
	    a[i][j][k] = 1;
	    b[i][j][k] = 1;
	  }
      }
  }

  fgIUnknown(a,b,c,ROOP_MAX);

  r = 0.0;

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



