#include <stdio.h>

#define loop_num 10
#define Correct_answer 700

void sub(double a[loop_num][loop_num], double b[loop_num][loop_num] ,int n)
{
  int i,j;

  for (i=0; i<n; i++) {
    for (j=0; j<n; j++) {
      a[i][j] = a[i][j] + b[i][j];
    }
  }

  for (i=0; i<n; i++) {
    for (j=0; j<n; j++) {
      a[i][j] = a[i][j] + b[i][j];
    }
  }

  for (i=0; i<n; i++) {
    for (j=0; j<n; j++) {
      a[i][j] = a[i][j] + b[i][j];
    }
  }

  return;
}

int main()
{
  double a[loop_num][loop_num], b[loop_num][loop_num];
  int i,j,result;

  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      a[i][j] = 1.0;
      b[i][j] = 2.0;
    }
  }

  sub(a,b,loop_num);

  result = 0.0;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      result += a[i][j];
    }
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
