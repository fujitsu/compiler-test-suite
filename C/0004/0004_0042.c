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
  int i,dat,flag;

  dat = x[ 6  - 1] & 0x7fff;
  for (i=1; i<6; i++) {
    switch (dat*i) {
    case 1:
      if (dat==1)
	flag=1;
      else
	flag=-1;
      break;
    case 2:
      if (dat==2)
	flag=1;
      else
	flag=-1;
      break;
    case 3:
      if (dat==3)
	flag=1;
      else
	flag=-1;
      break;
    case 4:
      if (dat==4)
	flag=1;
      else
	flag=-1;
      break;
    case 5:
      if (dat==5)
	flag=1;
      else
	flag=-1;
      break;
    default:
      if (dat==1)
	flag=1;
      else
	flag=2;
      break;
    }
    if (flag)
      break;
  }
  if (flag>0)
    return(1);
  else
    return(0);
}
int main()
{

  if (eisnan (x))
    x[6 - 1] = 0x1;

  x[6 - 1] ^= 0x8000;
  printf("%x\n",x[5]);
}


