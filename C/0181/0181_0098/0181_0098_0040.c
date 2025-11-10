
#include <stdio.h>
unsigned short x[20];

static
void init(x)
     unsigned  short  x[];
{
  int i;
  for (i=0; i<20; i++){
    x[i]=i;
  }
}

static int 
eisnan (x)
     unsigned  short  x[];
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

int lto_sub_41()
{

  if (eisnan (x))
    goto aaa;

  x[6 - 1] ^= 0x8000;
 aaa:
  printf("%x\n",x[5]);
}


