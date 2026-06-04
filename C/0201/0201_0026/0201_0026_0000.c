#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct TAG {
  int *p;
  float array[128];
} blk[2];

#pragma omp threadprivate(blk)

void sub(void );
int main()
{
  int i;
  blk[0].p = malloc(sizeof(int )*(128));
  blk[1].p = malloc(sizeof(int )*(128));
  for(i=0;i<128;i++) {
    blk[0].p[i] = i;
    blk[1].p[i] = i;
  }
    
  sub();
  free(blk[0].p);
  free(blk[1].p);
  puts("pass");
}
