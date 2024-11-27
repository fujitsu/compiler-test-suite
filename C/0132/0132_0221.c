#include <stdlib.h>

#include <stdio.h>
int main()
{
  unsigned int  u4_max[20], u4_zero[20], u4_mid1[20], u4_mid2[20];
  double        r8_max[20], r8_zero[20], r8_mid1[20], r8_mid2[20];
  int           i;

  for(i=0;i<20;i++)
    {
      u4_max[i] =0xffffffff;
      u4_zero[i]=0x00000000;
      u4_mid1[i]=0x7fffffff;
      u4_mid2[i]=0x80000000;
    }
  for(i=0;i<20;i++)
    {
      r8_max[i] =(double)u4_max[i];
      r8_zero[i]=(double)u4_zero[i];
      r8_mid1[i]=(double)u4_mid1[i];
      r8_mid2[i]=(double)u4_mid2[i];
    }
  printf(" max :%12u(%8x)->%f \n min :%12u(%8x)->%f \n mid1:%12u(%8x)->%f \n mid2:%12u(%8x)->%f \n",
	 u4_max[1],u4_max[1], r8_max[1], u4_zero[1],u4_zero[1], r8_zero[1],
	 u4_mid1[1],u4_mid1[1], r8_mid1[1], u4_mid2[1],u4_mid2[1], r8_mid2[1]);
  exit(0);
}
  
