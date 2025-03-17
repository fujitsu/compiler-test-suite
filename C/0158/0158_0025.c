#include <stdio.h>

#define loop_num 10
#define loop_num2 20
#define EXPECTED_VALUE 2000
#define EXPECTED_VALUE2 19000

double a[loop_num][loop_num][loop_num];
double b[loop_num][loop_num][loop_num];
double c[loop_num][loop_num][loop_num2];
double d[loop_num][loop_num][loop_num2];

void sub(void)
{
  int i,j,k,l;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	a[i][j][k] = a[i][j][k] + b[i][j][k];
      }
      for (l=0; l<loop_num2; l++) {
	c[i][j][l] = c[i][j][l] + d[i][j][l];
      }
    }
  }
  return;
}

int main()
{
  int i,j,k,l,result,result2;

  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	a[i][j][k] = 1;
	b[i][j][k] = 1;
      }
      for (l=0; l<loop_num2; l++) {
	c[i][j][l] = 0;
	d[i][j][l] = l;
      }
    }
  }
  sub();

  result = 0;
  result2 = 0;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	result += a[i][j][k];
      }
      for (l=0; l<loop_num2; l++) {
	result2 += c[i][j][l];
      }
    }
  }

  if (result == EXPECTED_VALUE) {
    if (result2 == EXPECTED_VALUE2) {
      printf("ok\n");
    } else {
      printf("ng ... array_c ... %d\n",result2);
    }
  } else {
    printf("ng ... array_a ... %d\n",result);
  }
  return 0;
}
