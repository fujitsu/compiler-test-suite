#include <stdio.h>
int main()
{
  int ia;
  int i;

  ia = 0;

  {
    for(i=0; i<100; i++)
      {
        ia += (i+1);
      }
  }

  printf(" OK \n");
  return 0;
}
