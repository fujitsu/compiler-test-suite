
#include <stdio.h>

#define loop_num 10
#define Correct_answer 1020

void sub(double a[][loop_num][loop_num], double *b, int *c1, int *c2, int *c3, int n)
{
  int i;
  for (i=0; i<n; i++) {
    a[c1[i]][c2[i]][c3[i]] = a[c1[i]][c2[i]][c3[i]] + b[c1[c2[c3[i]]]];
  }
  return;
}

int main()
{
  double a[loop_num][loop_num][loop_num];
  double b[loop_num];
  int c1[loop_num],c2[loop_num],c3[loop_num];
  int i,j,k,result;

  for (i=0; i<loop_num; i++) {
    b[i] = 2.0;
    c1[i] = i;
    c2[i] = i;
    c3[i] = i;
  }
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      for (k=0; k<loop_num; k++) {
	a[i][j][k] = 1.0;
      }
    }
  }

  sub(a,b,c1,c2,c3,loop_num);

  result = 0;
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
