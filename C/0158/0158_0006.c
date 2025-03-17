#include <stdio.h>

#define loop_num 10
#define EXPECTED_VALUE 300000

double a[loop_num][loop_num][loop_num][loop_num][loop_num];
double b[loop_num][loop_num][loop_num][loop_num][loop_num];
double c[loop_num][loop_num][loop_num][loop_num][loop_num];

void sub(void)
{
  int i,j,k,l,m;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	for (l=0; l<loop_num; l++) {
	  for (m=0; m<loop_num; m++) {
	    a[i][j][k][l][m] = a[i][j][k][l][m] + b[i][j][k][l][m] + c[i][j][k][l][m];
	  }
	}
      }
    }
  }
  return;
}

int main()
{
  int i,j,k,l,m;
  int result;

  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	for (l=0; l<loop_num; l++) {
	  for (m=0; m<loop_num; m++) {
	    a[i][j][k][l][m] = 1;
	    b[i][j][k][l][m] = 1;
	    c[i][j][k][l][m] = 1;
	  }
	}
      }
    }
  }

  sub();

  result = 0;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	for (l=0; l<loop_num; l++) {
	  for (m=0; m<loop_num; m++) {
	    result += a[i][j][k][l][m];
	  }
	}
      }
    }
  }
  
  if (result == EXPECTED_VALUE) {
    printf("ok\n");
  } else {
    printf("ng ... %d\n",result);
  }
  return 0;
}
