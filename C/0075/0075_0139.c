#include <stdio.h>

void prjfcm(double x[], double *sum)
{
  int ip, jp, ic, ib, jb, ii, i, indx;
  double tens[3 + 1];

  for (i=0; i<3; ++i) {
    tens[i] = 0.0;
  }
  
  for (ip=1; ip<=3; ++ip) {
    indx=3*(ip-1);
    for (jp=1; jp<=ip; ++jp) {
      for (ic=1; ic<=3; ++ic) {
	ii=indx+ic;
	for (ib=1; ib<=3; ++ib) {
	  for (jb=1; jb<=3; ++jb) {
	    if (tens[jb] == 0.0) goto aaa;
	    *sum = x[indx+ib];
	  aaa:
	    continue;
	  }
	}
	printf("%d\n", ii);
      }
    }
  }
}
int main() 
{
  double x[100], sum;
  prjfcm(x, &sum);
}

