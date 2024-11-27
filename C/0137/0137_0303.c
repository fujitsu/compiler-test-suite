#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1 (void);
int sub2 (void);
int sub3 (void);
int main (void)
{
  printf("***** unroll033 ***** unroll 5 never 0 not 0\n");
  sub1 ();
  sub2 ();
  sub3 ();
  printf("***** unroll033 ***** end\n");
exit (0);
}

int sub1 (void)
{
  int i, check;
  check = 0;
  for (i = 10; i > 0; i--)
    check++;
  if (check == 10)
    printf ("sub1 ok\n");
  else
    printf ("sub1 ng 10=%d\n", check);
}

int sub2 (void)
{
  int i, check, dd[11];
  for (i = 0; i < 10;)
    {
      i++;
      dd[i] = i;
    }
  for (i = 1; i < 10; i++)
    if (dd[i] != i)
      printf ("sub2 ng %d=%d\n", dd[i], i);
  printf ("sub2 ok\n");
}

int sub3 (void)
{
  int i, dd[10], j;
  j = 0;
  for (i = 0; i < 9; i++)
    {
      j++;
      dd[j++] = i;
      j--;
    }
  for (i = 1; i < 9; i++)
    if (dd[i] != i - 1)
      printf ("sub3 ng %d=%d\n", dd[i], i - 1);
  printf ("sub3 ok\n");
}
