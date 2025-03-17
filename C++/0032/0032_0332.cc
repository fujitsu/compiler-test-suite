





#include <stdio.h>
int main()
{
  int i = 1;
  char *cp;
  short *sp;
  int *ip;
  float *fp;
  double *dp;

  cp = &(char&)i;
  *cp += 1;
  if (cp == (char*)&i)
    printf("ok\n");
  else
      printf("ng cp=%x &i=%x \n", cp, &i);


}
