#include <stdio.h>
static int *adr(int *u);
int main()
{
  int *a;
  int u[1];
  int i = 100, k = 0, j = 0, ii = 0;

  a = adr(u);
  while (j <= 100) {
    *(a + ii) = i;
    i = i + 200;
    k += *(a + ii);
    j += 200;
    printf("%d %d %d\n", k, a[0], j);
  }
}

static int *adr(int *u) { return u;}
