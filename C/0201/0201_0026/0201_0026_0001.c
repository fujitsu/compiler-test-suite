#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct TAG {
  int *p;
  float array[128];	
};
extern struct TAG blk[2];
#pragma omp threadprivate(blk)

void sub2(void );

void sub()
{
  int i,j;	
#pragma omp parallel copyin(blk) private(i,j)
  for(j=0;j<2;j++) {
    for(i=0;i<128;i++) {
      blk[j].array[i] = i;
    }
  }
  sub2();
}

