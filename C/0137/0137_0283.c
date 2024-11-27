#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct base
  {
    int c[7];
  };
struct base st0 =
{1, 2, 3, 4, 5, 6, 7};

struct tag1
  {
    int b[7];
    struct base *p;
  };

struct tag1 st1;

void
bxd23 ()
{
  int i;

  st1.p = &st0;
  for (i = 0; i < 7; i++)
    st1.b[i] = st1.p->c[i];
  if (i != 7)
    printf ("bx23 ng %d\n", i);
  for (i = 0; i < 7; i++)
    if (st1.b[i] != i + 1)
      {
	printf ("bxd23 ng\n");
	return;
      }
  if (i != 7)
    printf ("bx23 ng %d\n", i);
  printf ("bx23 ok\n");
}
int main()
{
  printf("***** unroll012 ***** unroll 1 never 0 not 1\n");
  bxd23 ();
  printf("***** unroll012 ***** end\n");
exit (0);
}
