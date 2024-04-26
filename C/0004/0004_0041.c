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

  goto eee;

 ddd:
  goto ccc;

 eee:

  if ((x[ 6  - 1] & 0x7fff) != 0x7fff)
    goto ddd;

  for (i = 0; i <  6  - 1; i++)
    {
      if (*x++ != 0)
        goto ccc;
    }

  return (1);

 ccc:
  return (0);
}
int main()
{

  if (eisnan (x))
    x[6 - 1] = 0x1;

  x[6 - 1] ^= 0x8000;
  printf("%x\n",x[5]);
}


