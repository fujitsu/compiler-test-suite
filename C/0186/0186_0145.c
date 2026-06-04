#include <stdio.h>
#include <math.h>

static void init (double *aaa, double *bbb, double *ccc, double *ddd, double *eee,
		  double *fff, double *ggg, double *hhh, double *xxx) {
  long int i;
  for (i=0; i<100; i++) {
    aaa[i] = i * 0.1;
    bbb[i] = i * 0.2;
    ccc[i] = i * 0.3;
    ddd[i] = i * 0.4;
    eee[i] = i * 1.1;
    fff[i] = i * 1.2;
    ggg[i] = i * 1.3;
    hhh[i] = i * 1.4;
    xxx[i] = 0.0;
  }
}

int main() {
  double aaa[100], bbb[100], ccc[100], ddd[100], eee[100];
  double fff[100], ggg[100], hhh[100], xxx[100];
  long int i;

  init(aaa, bbb, ccc, ddd, eee, fff, ggg, hhh, xxx);
  
  for (i=0; i<100; i++) {
    xxx[i] = aaa[i] * bbb[i] + ccc[i] * ddd[i] + eee[i] * fff[i] + ggg[i] * hhh[i];
  }
  if (floor(xxx[50]) == 8200.0) {
    printf("OK\n");
  } else {
    printf("NG %f\n", floor(xxx[50]));
  }

  for (i=0; i<100; i++) {
    xxx[i] = aaa[i] * bbb[i] + ccc[i] * ddd[i] + eee[i] * fff[i] + ggg[i] * hhh[i];
  }
  if (floor(xxx[50]) == 8200.0) {
    printf("OK\n");
  } else {
    printf("NG %f\n", floor(xxx[50]));
  }

  for (i=0; i<100; i++) {
    xxx[i] = aaa[i] * bbb[i] + ccc[i] * ddd[i] + eee[i] * fff[i] + ggg[i] * hhh[i];
  }
  if (floor(xxx[50]) == 8200.0) {
    printf("OK\n");
  } else {
    printf("NG %f\n", floor(xxx[50]));
  }

  return 0;
}
