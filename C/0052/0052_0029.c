#include <stdio.h>




long int seedi = 2131;

double ran2()
{
  seedi=((314157*seedi)+19)&0xffffff;
  return ( (double) seedi/(double)0xffffff);
}
int main()
{
  double x;

  printf("********** 32 TEST START **********\n");

  x = ran2();

  if (x > 0.903437 && x < 0.903438)
      printf("***** 32 - 01 ***** O   K *****\n");
    else
      printf("***** 32 - 01 ***** N   G ***** (%g) \n",x);

  printf("********** 32 TEST  END  **********\n");
}

