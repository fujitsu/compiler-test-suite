#include <stdio.h>
#include <math.h>
int main()
{
  double m1= 0x1.p+31;

  printf("max test\n");
  printf("%E: %E\n",pow(2,31),m1);
}
