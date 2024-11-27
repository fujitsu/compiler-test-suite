#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct base
  {
    int c[10];
  };
struct base st0 =
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

struct tag1
  {
    int b[10];
    struct base *p;
  };

struct tag1 st1;

void
bxd24 (L)
int L;
{
  int i;

  st1.p = &st0;
  for (i = 0; i < L; i++)
    st1.b[i] = st1.p->c[i];
  if (i != 10)
    printf ("bx24 ng %d\n", i);
  for (i = 0; i < L; i++)
    if (st1.b[i] != i + 1)
      {
	printf ("bxd24 ng\n");
	return;
      }
  if (i != 10)
    printf ("bx24 ng %d\n", i);
  printf ("bx24 ok\n");
}
int main()
{
  printf("***** unroll013 ***** unroll 1 never 0 not 1\n");
  bxd24 (10);
  printf("***** unroll013 ***** end\n");
exit (0);
}
