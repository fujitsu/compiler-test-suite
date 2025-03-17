#include <stdio.h>
struct x 
{
  int *p;
  int *q;
};
#define N 100

int sub(struct x *a, struct x *b) 
{
  int i;
  for (i=0; i<N; ++i) {
    a->p[i] = i;
    b->q[i] = N-i;
    if (a->p[i] == i) {
      a->p[i] = 0;
    }
  }
  return a->p[10];
}

int main(void) 
{
  struct x u;
  int a[N];
  u.p = a;
  u.q = a;
  if (sub(&u, &u) == 90) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
}
