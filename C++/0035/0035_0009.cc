#include <stdio.h>
#include <stdlib.h>

typedef union restrict_pointer {
  int x;
  unsigned int y;
} RP;

void foo(RP *r, RP *q) {
  r->x += 2;
  r->y += 3U;
  q->x += 3;
  q->y += 4U;
#if defined(sparc)
  if (r->x == 0) {
#else
  if (r->x == 7) {
#endif
    printf("test : ok : could optimize by by using restp\n");
  } else {
    printf("test : couldn't optimize by using restp\n");
  }
}

int main(void) {
  RP r, *q;
  q = &r;
  r.x = 1;
  r.y = 2U;
  foo(&r, q);
}
