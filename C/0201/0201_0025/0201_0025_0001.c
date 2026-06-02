#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct TAG {
  int *p;
  float array[128];	
};
extern struct TAG blk;
#pragma omp threadprivate(blk)

void sub2(void );

void sub()
{
  int i;	
#pragma omp parallel copyin(blk) private(i)
  for(i=0;i<128;i++) {
    blk.array[i] = i;
  }
  sub2();
}

