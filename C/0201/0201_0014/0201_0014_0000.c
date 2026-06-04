#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  int i,i1,i2,i3,i4,i5,i6,i7;
  static long double (*p)[3][3][3][3][3][3];
  long double pp[3][3][3][3][3][3][3];
#pragma omp threadprivate(p)
  p = malloc(sizeof(long double)*3*3*3*3*3*3*3);
  for(i=0;i<3*3*3*3*3*3*3;i++) {
    ((long double *)p)[i] = i;
    ((long double *)&pp)[i] = i;
  }

#pragma omp parallel copyin(p) private(i1,i2,i3,i4,i5,i6,i7)
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

