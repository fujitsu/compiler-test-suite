
#include <stdio.h>

static int *a[3];

void sub(float *fd, float *fe, double d)
{
  int *det = a[0];
  float *dp;

  for (dp = fd; dp < fe; dp++) {
    *dp = *det++ - d;
  }
}
int main()
{
  float d[2 + 1];
  int t[3];
  t[0] = 9;
  t[1] = 10;
  t[2] = 11;
  
  a[0] = &t[0];
  a[1] = &t[1];
  a[2] = &t[2];
  d[0] = 3.0;
  d[1] = 9.0;
  sub((float *)&d[0], (float *)&d[2], 3.0);
  if ((int)d[1] == 7) {
    printf("OK\n");
  } else {
    printf("NG: %d, answer=7\n", (int)d[1]);
  }
}
