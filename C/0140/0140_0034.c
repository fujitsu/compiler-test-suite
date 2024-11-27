#include <stdio.h>

#define ZERO (double)0.0
int main()
{
  int i, j;
  double a[50], b[50];
  double p=ZERO, q=ZERO, s=ZERO, f=ZERO;

  for (i=0; i<50; i++) {
    a[i] = (double)i/(double)5.0;
    b[i] = (double)i/(double)20.0;
  }

  for (i=0; i<50; i++) {
    switch (i%10) {
    case 0: case 1:
      f = f + a[i];
      break;
    case 2: case 3:
      f = f + b[i];
      break;
    case 4: case 5:
      f = f - a[i];
      break;
    case 6: case 7:
      f = f - b[i];
      break;
    default:
      f = f + (a[i] - b[i]);
      break;
    }
  }

  for (i=0; i<50; i++) {
    q = f;
    s = s + q;
    q = p;
    p = q + f;
    
  }

  printf("sum1 = %lf\n", p);
  printf("sum2 = %lf\n", s);
}
