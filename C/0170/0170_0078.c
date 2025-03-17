#include <stdio.h>

int sub1 ();
int sub2 ();
int sub3 ();
int main()
{
  printf("***** unroll033 ***** unroll 5 never 0 not 0\n");
  sub1 ();
  sub2 ();
  sub3 ();
  printf("***** unroll033 ***** end\n");
}


int sub1 ()
{
  int i, check;
  check = 0;
  for (i = 10; i > 0; i--)
    check++;
  if (check == 10)
    printf ("sub1 ok\n");
  else
    printf ("sub1 ng 10=%d\n", check);
  return 0;
}


int sub2 ()
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
  return 0;
}


int sub3 ()
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
  return 0;
}
