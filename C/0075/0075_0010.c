#include <stdio.h>
#include <stdlib.h>

struct aaa {
  int *h;
  int hi, min, max, maxh;
};

void
sub(int mh, struct aaa *a )
{
  int i;

  a->min = 20;
  a->max = 120;
  
  a->hi = (int)
    ((double)(a->max - a->min + 2)/(double)mh+0.5);
  
  a->maxh = (int)
    ((double)(a->max - a->min + 2)/(double)a->hi+0.5);
}
int main() 
{
  struct aaa a;
  a.h = &a.hi;
  sub(50, &a);
  printf("%d,%d\n", a.hi, a.maxh);
}

