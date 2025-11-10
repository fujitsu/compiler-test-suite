
#include <stdio.h>
unsigned short x_03[20];

void init(unsigned  short  x_03[])
{
  int i;
  for (i=0; i<20; i++){
    x_03[i]=i;
  }
}

int 
eisnan (unsigned  short  x_03[])
{
  int i;

  goto eee;

 ddd:
  goto ccc;

 eee:

  if ((x_03[ 6  - 1] & 0x7fff) != 0x7fff)
    goto ddd;

  for (i = 0; i <  6  - 1; i++)
    {
      if (*(x_03)++ != 0)
        goto ccc;
    }

  return (1);

 ccc:
  return (0);
}

int lto_sub_42()
{

  if (eisnan (x_03))
    x_03[6 - 1] = 0x1;

  x_03[6 - 1] ^= 0x8000;
  printf("%x\n",x_03[5]);
}


