#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct TAG {
  double x;
  float  y;
  long   a;
  int    b;
};
int main()
{
  int i,i1,i2,i3,i4,i5,i6,i7;
  struct TAG (*p)[3][3][3][3][3][3];
  static struct TAG pp[3][3][3][3][3][3][3];
#pragma omp threadprivate(pp)
  p = malloc(sizeof(struct TAG)*3*3*3*3*3*3*3);
  for(i=0;i<3*3*3*3*3*3*3;i++) {
    ((struct TAG *)p)[i].a = i;
    ((struct TAG *)&pp)[i].a = i;
  }

#pragma omp parallel copyin(pp) private(i1,i2,i3,i4,i5,i6,i7)
  for (i7=0;i<3;i++) {
    for (i6=0;i<3;i++) {
      for (i5=0;i<3;i++) {
	for (i4=0;i<3;i++) {
	  for (i3=0;i<3;i++) {
	    for (i2=0;i<3;i++) {
	      for (i1=0;i<3;i++) {
		if( p[i1][i2][i3][i4][i5][i6][i7].a != pp[i1][i2][i3][i4][i5][i6][i7].a ) abort();
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

