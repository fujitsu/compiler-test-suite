#include <stdio.h>
int sub2 (int L);
int sub1 (int L);
int main()
{
  sub1 (-10);
  sub2 (-10);
}
int sub1 (L)
     int L;
{
  int i;
  int j = 0;
  for (i = L; i < 0; i++)
    j++;
  if (j == 10)
    printf ("ok\n");
  else
    printf ("ng %d\n", j);
}

int sub2 (L)
     int L;
{
  int i;
  int j = 0;
  for (i = 0; i > L; i--)
    j++;
  if (j == 10)
    printf ("ok\n");
  else
    printf ("ng %d\n", j);
}
