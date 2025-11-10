
#include <stdio.h>
unsigned short x_04[20];

static
void init(x_04)
     unsigned  short  x_04[];
{
  int i;
  for (i=0; i<20; i++){
    x_04[i]=i;
  }
}

static
int 
eisnan (x_04)
     unsigned  short  x_04[];
{
  int i,dat,flag;

  dat = x_04[ 6  - 1] & 0x7fff;
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

int lto_sub_43()
{

  if (eisnan (x_04))
    x_04[6 - 1] = 0x1;

  x_04[6 - 1] ^= 0x8000;
  printf("%x\n",x_04[5]);
}


