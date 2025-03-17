#include <stdio.h>


struct base
  {
    int c[6];
  };
struct base st0 =
{1, 2, 3, 4, 5, 6};

struct tag1
  {
    int b[6];
    struct base *p;
  };

struct tag1 st1;

void
bxd22 ()
{
  int i;

  printf("***** unroll011 ***** unroll 1 never 0 not 1\n");
  st1.p = &st0;
  for (i = 0; i < 6; i++)
    st1.b[i] = st1.p->c[i];
  if (i != 6)
    printf ("bx22 ng %d\n", i);
  for (i = 0; i < 6; i++)
    if (st1.b[i] != i + 1)
      {
	printf ("bxd22 ng\n");
	return;
      }
  if (i != 6)
    printf ("bx22 ng %d\n", i);
  printf ("bx22 ok\n");
  printf("***** unroll011 ***** end\n");
}
int main()
{
  bxd22 ();
}
