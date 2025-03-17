#include <stdio.h>
int f ();


int L;
int main()
{
  int i, j = 0;
  L = 0;
  f ();
  for (i = L; i < 100; i++)
    {
      j++;
    }
  if (i == 100 && j == 50)
    printf ("ok\n");
  else
    printf ("ng,i=%d(100),j=%d(50)\n", i, j);
}
int f ()
{
  L = 50;
}
