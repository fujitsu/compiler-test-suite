#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <complex.h>
int main()
{
  int i,i1,i2,i3,i4,i5,i6,i7;
  static double _Complex (*p)[3][3][3][3][3][3];
  static double _Complex pp[3][3][3][3][3][3][3];
#pragma omp threadprivate(pp,p)
  p = malloc(sizeof(double _Complex)*3*3*3*3*3*3*3);
  for(i=0;i<3*3*3*3*3*3*3;i++) {
    ((double _Complex *)p)[i] = i + 200.0i;
    ((double _Complex *)&pp)[i] = i + 200.0i;
  }

#pragma omp parallel copyin(p,pp) private(i1,i2,i3,i4,i5,i6,i7)
  for (i7=0;i<3;i++) {
    for (i6=0;i<3;i++) {
      for (i5=0;i<3;i++) {
	for (i4=0;i<3;i++) {
	  for (i3=0;i<3;i++) {
	    for (i2=0;i<3;i++) {
	      for (i1=0;i<3;i++) {
		if( p[i1][i2][i3][i4][i5][i6][i7] != pp[i1][i2][i3][i4][i5][i6][i7] ) abort();
	      }
	    }
	  }
	}
      }
    }
  }

  free(p);
  puts("pass");
}

