#include <stdio.h>


#include <math.h>
#define ANS 9
int main()
{
  float  f, g;
  double d, h;
  int    ok=0;

  f = (float)sin(0.0);
  g = (float)tan(0.0);
  h = (float)sin(0.0);
  d = sin(0.0);

  
  if (f == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (0.0 == f)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (d == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (0.0 == d)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (f == 0.0F)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (g == f)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if ((float)d == 0.0F)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if ((h+d) == (h-d))
    ok += 1;
  else
    printf("NG : %d\n",ok);

  
  if (0.0 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n",ok);

  if (ok == ANS)
    printf("OK\n");

}
