#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct TAG {
  double x;
  float  y;
  long   a;
  int    b;
};
int main()
{
  int i;
  static struct TAG *p;
  static struct TAG pp[128];
#pragma omp threadprivate(pp)

  p = malloc(sizeof(struct TAG)*128);
  for(i=0;i<128;i++) {
    p[i].y = i;
    pp[i].y = i;
  }
  
#pragma omp parallel for copyin(pp) private(i)
  for(i=0;i<128;i++) {
    if( p[i].y != pp[i].y ) {
      printf("%d %d\n", (int )p[i].y, (int )pp[i].y);
      abort();
    }
  }

  free(p);
  puts("pass");
}


