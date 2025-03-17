#include <stdio.h>


static void 
init (a)
     int a[10];
{
  a[0] = 1;
  a[1] = 6;
  a[2] = 2;
  a[3] = 7;
  a[4] = 3;
  a[5] = 8;
  a[6] = 4;
  a[7] = 9;
  a[8] = 5;
  a[9] = 10;
}

static void 
sub1 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma loop unroll (10)
  for (i = 0; i < 10; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}
static void 
sub2 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma loop unroll (5)
  for (i = 0; i < 10; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}
static void 
sub3 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma loop unroll (4)
  for (i = 0; i < 9; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 255)
    printf ("ng,%d\n", sum);
  if (j != 9)
    printf ("ng,%d\n", j);
}
static void 
sub4 (L)
     int L;
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
  for (i = 0; i < L; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}
static void 
sub5 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma loop unroll (4)
  for (i = 0; i < 10; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}
static void 
sub6 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma loop unroll (7)
  for (i = 0; i < 10; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}


int main()
{
  sub1 ();
  sub2 ();
  sub3 ();
  sub4 (10);
  sub5 ();
  sub6 ();
  printf ("ok\n");
  return 0;
}
