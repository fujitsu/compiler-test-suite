#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct TAG {
  int *p;
  float array[128];
} blk;

#pragma omp threadprivate(blk)

void sub(void );
int main()
{
  int i;
  blk.p = malloc(sizeof(int )*(128));
  for(i=0;i<128;i++) {
    blk.p[i] = i;
    blk.array[i] = i;
  }
    
  sub();
  free(blk.p);
  puts("pass");
}
