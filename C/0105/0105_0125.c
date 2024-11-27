#include "stdio.h"
int main()
{
  int a[10][10];
  int i,j;
  int max1 = 0;
  int imax = 0;
  int jmax = 0;

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      a[i][j] = 1;
    }
  }
  a[5][5] = 100;

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      if (max1 < a[i][j]) {
	max1 = a[i][j];
	imax = i;
	jmax = j;
      }
    }
  }

  printf("%d, %d, %d\n",max1,imax,jmax);

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      if (max1 < a[i][j]) {
	max1 = a[i][j];
	imax = i;
	jmax = j;
      }
    }
  }

  printf("%d, %d\n",max1,imax);

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      if (max1 < a[i][j]) {
	max1 = a[i][j];
	imax = i;
	jmax = j;
      }
    }
  }

  printf("%d, %d\n",imax,jmax);

  for (i=0; i<10; i++) {
    for (j=0; j<10; j++) {
      if (max1 < a[i][j]) {
	max1 = a[i][j];
	imax = i;
	jmax = j;
      }
    }
  }
}
