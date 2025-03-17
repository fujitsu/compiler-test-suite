#include <stdio.h>


struct base
  {
    int c[5];
  };
struct base st0 =
{1, 2, 3, 4, 5};

struct tag1
  {
    int b[5];
    struct base *p;
  };

struct tag1 st1;

void
bxd21 ()
{
  int i;

  printf("***** unroll010 ***** unroll 1 never 0 not 1\n");
  st1.p = &st0;
  for (i = 0; i < 5; i++)
    st1.b[i] = st1.p->c[i];
  if (i != 5)
    printf ("bx2 ng %d\n", i);
  for (i = 0; i < 5; i++)
    if (st1.b[i] != i + 1)
      {
	printf ("bxd21 ng\n");
	return;
      }
  if (i != 5)
    printf ("bx21 ng %d\n", i);
  printf ("bx21 ok\n");
  printf("***** unroll010 ***** end\n");
}
int main()
{
  bxd21 ();
}
