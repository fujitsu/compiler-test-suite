

#include <stdio.h>

#define loop_num 80
#define Correct_answer 512016

void sub(double a[][loop_num][loop_num], double b[][loop_num][loop_num] ,int n)
{
  int i,j,k;
  for (i=0; i<n; i=i+40) {
    for (j=0; j<n; j=j+40) {
      for (k=0; k<n; k=k+40) {
	a[i][j][k] = b[1][1][k] + 1;
      }
    }
  }
  return;
}

int main()
{
  double a[loop_num][loop_num][loop_num];
  double b[loop_num][loop_num][loop_num];
  int i,j,k,result;

  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	a[i][j][k] = 1.0;
	b[i][j][k] = 2.0;
      }
    }
  }

  sub(a,b,loop_num);

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
