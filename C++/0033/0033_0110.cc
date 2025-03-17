#include <stdio.h>

struct Stag {
  int a;
  int b;
};

Stag g_var;

int Stag(struct Stag *);
int main() {
  struct Stag *ps;
  int i;

#pragma omp parallel
  g_var.a = 2;
#pragma omp parallel
  g_var.b = 3;
#pragma omp parallel
  ps = &g_var;
#pragma omp parallel
  i = Stag(ps);

  if (i == 5)
    printf("ok\n");
  else
    printf("ng = %d\n", i);
}

int Stag(struct Stag *p) { return p->a + p->b; }
