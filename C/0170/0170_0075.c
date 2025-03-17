#include <stdio.h>
int sub (int L);

int main()
{
  printf("***** unroll030 ***** unroll 1 never 0 not 0\n");
  sub (9);
  printf("***** unroll030 ***** end\n");
}

int sub (L)
     int L;
{
  int i;
  int j1 = 0, j2 = 0;
  for (i = 0; i < L; i++)
    if (i < 5)
      j1++;
    else
      j2++;
  if (j1 == 5 && j2 == 4)
    printf ("ok\n");
  else
    printf ("ng j1=%d j2=%d\n", j1, j2);
}
