#include <stdio.h>

#define loop_num 10
#define EXPECTED_VALUE 5000

double a[loop_num][loop_num][loop_num];
double b[loop_num][loop_num][loop_num];
double c[loop_num][loop_num][loop_num];
double d[loop_num][loop_num];
double e[loop_num][loop_num];

void sub(void)
{
  int i,j,k;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      d[i][j] = e[i][j] + 1.0;
      for (k=0; k<loop_num; k++) {
	a[i][j][k] = a[i][j][k] + b[i][j][k] + c[i][j][k] + d[i][j];
      }
    }
  }
  return;
}

int main()
{
  int i,j,k,result;

  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      d[i][j] = 0;
      e[i][j] = 1;
      for (k=0; k<loop_num; k++) {
	a[i][j][k] = 1;
	b[i][j][k] = 1;
	c[i][j][k] = 1;
      }
    }
  }

  sub();

  result = 0;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	result += a[i][j][k];
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
