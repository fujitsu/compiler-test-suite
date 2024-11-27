#include <stdio.h>

int main()
{
  int i;
  double a[50], b[50];
  double p=(double)0.0, q=(double)0.0, s=(double)0.0;

  for (i=0; i<50; i++) {
    a[i] = (double)i/(double)5.0;
    b[i] = (double)i/(double)20.0;
  }


  while (i<50) {
    p = p + a[i];
    q = q + b[i];
    s = a[i] + b[i] - s;
  }

  if (!((int)p & (int)q & (int)s)) {
    printf("*** OK ***\n");
  }
}
