#include <stdio.h>

#define nn 10
#define EXPECTED_VALUE 80

void foo(double a[nn][2][2][2], double b[nn][2][2][2], int n) {
  int i,j,k,l;

  for (i=0; i<n; i++) {
    for (j=0; j<2; j++) {
      for (k=0; k<2; k++) {
	for (l=0; l<2; l++) {
	  a[i][j][k][l] = b[i][j][k][l];
	}
      }
    }
  }
}

int main()
{
  double a[nn][2][2][2], b[nn][2][2][2];
  int i,j,k,l,result;

  for (i=0; i<nn; i++) {
    for (j=0; j<2; j++) {
      for (k=0; k<2; k++) {
	for (l=0; l<2; l++) {
	  a[i][j][k][l] = 0;
	  b[i][j][k][l] = 1.0;
	} 
      }
    }
  }

  foo(a,b,nn);

  result = 0;
  for (i=0; i<nn; i++) {
    for (j=0; j<2; j++) {
      for (k=0; k<2; k++) {
	for (l=0; l<2; l++) {
	  result += a[i][j][k][l];
	} 
      }
    }
  }
  
  if (result == EXPECTED_VALUE) {
    printf("ok\n");
  } else {
    printf("ng foo %d\n",result);
  }

  return 0;
}
