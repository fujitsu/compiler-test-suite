#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub4 ();
int sub3 ();
int sub2 ();
int sub1 ();
int main()
{
  sub1 ();
  sub2 ();
  sub3 ();
  sub4 ();
exit (0);
}
int sub1 ()
{
  char i;
  int j = 0;
  for (i = 0; i < 10; i++)
    {
      j++;
    }
  if (i == 10 && j == 10)
    printf ("ok\n");
  else
    printf ("ng,i=%d(10),j=%d(10)\n", i, j);
}
int sub2 ()
{
  unsigned char i;
  int j = 0;
  for (i = 0; i < 10; i++)
    {
      j++;
    }
  printf ("i=%d,j=%d\n", i, j);
}
int sub3 ()
{
  short i;
  int j = 0;
  for (i = 0; i < 10; i++)
    {
      j++;
    }
  if (i == 10 && j == 10)
    printf ("ok\n");
  else
    printf ("ng,i=%d(10),j=%d(10)\n", i, j);
}
int sub4 ()
{
  unsigned short i;
  int j = 0;
  for (i = 0; i < 10; i++)
    {
      j++;
    }
  if (i == 10 && j == 10)
    printf ("ok\n");
  else
    printf ("ng,i=%d(10),j=%d(10)\n", i, j);
}
