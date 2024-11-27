

#include <stdio.h>

#define loop_num 10
#define Correct_answer 250

void sub(double a[][loop_num][loop_num], double b[][loop_num][loop_num], int *c, int n ,int m)
{
  int i,j,k;
  for (i=0; i<n; i=i+m) {
    for (j=0; j<n; j=j+m) {
      for (k=0; k<n; k=k+m) {
	a[i][j][k] = b[2][c[k]][2] + 1;
      }
    }
  }
  return;
}

int main()
{
  double a[loop_num][loop_num][loop_num];
  double b[loop_num][loop_num][loop_num];
  int c[loop_num];
  int i,j,k,result;

  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	a[i][j][k] = 0.0;
	b[i][j][k] = 1.0;
	c[k] = k;
      }
    }
  }

  sub(a,b,c,loop_num,2);

  result = 0.0;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	result += a[i][j][k];
      }
    }
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
