#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  int i,ii,i1,i2,i3,i4,i5,i6,i7;
  static int (*p)[3][3][3][3][3][3];
#pragma omp threadprivate(p)
  p = malloc(sizeof(int)*3*3*3*3*3*3*3);
  for(i=0;i<3*3*3*3*3*3*3;i++) {
    ((int *)p)[i] = i;
  }

#pragma omp parallel copyin(p) private(ii,i1,i2,i3,i4,i5,i6,i7)
  for (i7=0;i<3;i++) {
    for (i6=0;i<3;i++) {
      for (i5=0;i<3;i++) {
	for (i4=0;i<3;i++) {
	  for (i3=0;i<3;i++) {
	    for (i2=0;i<3;i++) {
	      for (i1=0;i<3;i++) {
		ii = i1+(i2-1)*3+(i3-1)*9+(i4-1)*27+(i5-1)*81+(i6-1)*243+(i7-1)*729;
		if( p[i1][i2][i3][i4][i5][i6][i7] != ii ) abort();
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

