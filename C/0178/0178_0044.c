#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdbool.h>

static char gsc[256];
       char gc [256];
int main() {
  static char lsc[256];
         char lc [256];
  char *p;

  printf("prefetch test\n");
  p=malloc(256);
  if (p==0) exit(0);
  __builtin_prefetch(gsc);
  __builtin_prefetch(gc);
  __builtin_prefetch(lsc);
  __builtin_prefetch(lc);
  __builtin_prefetch(p);
  __builtin_prefetch(gsc,1);
  __builtin_prefetch(gc,0);
  __builtin_prefetch(lsc,1);
  __builtin_prefetch(lc,0);
  __builtin_prefetch(p,1);
  printf("test end \n");
  __builtin_prefetch(gsc,0,0);
  __builtin_prefetch(gc,1,1);
  __builtin_prefetch(lsc,0,2);
  __builtin_prefetch(lc,1,3);
  __builtin_prefetch(p,0,1);
  free(p);
  __builtin_prefetch((void*)-1,0,1);
}
