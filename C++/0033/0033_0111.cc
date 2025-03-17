#include <stdio.h>

union Utag {
  int a;
  int b;
};

Utag g_var;

int Utag(union Utag *);
int main() {
  union Utag *pu;
  int i;

#pragma omp parallel
  g_var.a = 2;
#pragma omp parallel
  g_var.b = 3;
#pragma omp parallel
  pu = &g_var;
#pragma omp parallel
  i = Utag(pu);

  if (i == 6)
    printf("ok\n");
  else
    printf("ng\n");
}

int Utag(union Utag *p) { return p->a + p->b; }
