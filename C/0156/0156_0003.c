#include <stdio.h>
struct x 
{
  int *p;
  int *q;
};

int sub(struct x *a, struct x *b) 
{
  int i = 10;
  *a->p = i;
  *b->q = 100-i;
  if (*a->p == i) {
    *a->p = 0;
  }
  return *a->p;
}

int main(void) 
{
  struct x u;
  int a;
  u.p = &a;
  u.q = &a;
  if (sub(&u, &u) == 90) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
}
