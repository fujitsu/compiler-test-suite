#include <stdio.h>
int main(void)
{
  int i;
  float f;
  i = 16777216;
  f = (float)i;
  printf("%d\n",i);
  printf("%f\n",f);
  i = 16777217;
  f = (float)i;
  printf("%d\n",i);
  printf("%f\n",f);
}
