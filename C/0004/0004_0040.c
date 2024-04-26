#include <stdio.h>

unsigned short x[20];

void init(unsigned  short  x[])
{
  int i;
  for (i=0; i<20; i++){
    x[i]=i;
  }
}

int 
eisnan (unsigned  short  x[])
{
  int i;
 
  if ((x[ 6  - 1] & 0x7fff) != 0x7fff)
    return (0);

  for (i = 0; i <  6  - 1; i++)
    {
      if (*x++ != 0)
        return (1);
    }

  return (0);
}
int main()
{

  if (eisnan (x))
    goto FOO;

  x[6 - 1] ^= 0x8000;
 FOO:
  printf("%x\n",x[5]);
}


