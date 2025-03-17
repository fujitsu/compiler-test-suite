#include <stdio.h>
int sub5 (void);
int sub4 (void);
int sub3 (void);
int sub2 (void);
int sub1 (void);
int test4 (void);
int test3 (void);
int test2 (void);
int test1 (void);

int main()
{
  test1 ();
  test2 ();
  test3 ();
  test4 ();
}

int 
test1 (void)
{
  int i, j = 0;
  int a, b;
  a = sub1 ();
  b = sub2 ();
  for (i = 0; i < (a + b); i++)
    {
      j++;
    }
  if (i == 102 && j == 102)
    printf ("ok\n");
  else
    printf ("ng i=%d,j=%d\n", i, j);
}

int 
test2 (void)
{
  int i, j = 0;
  int a, b, c;
  a = sub1 ();
  b = sub2 ();
  c = sub3 ();
  for (i = 0; i < (a + b - c); i++)
    {
      j++;
    }
  if (i == 99 && j == 99)
    printf ("ok\n");
  else
    printf ("ng i=%d,j=%d\n", i, j);
}

int 
test3 (void)
{
  int i, j = 0;
  int a, b, c, d;
  a = sub1 ();
  b = sub2 ();
  c = sub3 ();
  d = sub4 ();
  for (i = 0; i < ((a + b - c) * d); i++)
    {
      j++;
    }
  if (i == 396 && j == 396)
    printf ("ok\n");
  else
    printf ("ng i=%d,j=%d\n", i, j);
}

int 
test4 (void)
{
  int i, j = 0;
  int a, b, c, d, e;
  a = sub1 ();
  b = sub2 ();
  c = sub3 ();
  d = sub4 ();
  e = sub5 ();
  for (i = 0; i < ((a + b - c) * d / e); i++)
    {
      j++;
    }
  if (i == 198 && j == 198)
    printf ("ok\n");
  else
    printf ("ng i=%d,j=%d\n", i, j);
}

int 
sub1 (void)
{
  return 100;
}

int 
sub2 (void)
{
  return 2;
}

int 
sub3 (void)
{
  return 3;
}

int 
sub4 (void)
{
  return 4;
}

int 
sub5 (void)
{
  return 2;
}
