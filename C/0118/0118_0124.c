
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 2000

void sub(double *a, double *b ,int n, int m, int *data)
{
  int i,j;
  j=m;
  for (i=0; i<n/2; i++) {
    a[j] = a[j] + b[j];
    if (data[i]) {
      j = j + 1; 
    }
  }
  return;
}

int main()
{
  double a[loop_num], b[loop_num];
  int data[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0;
    b[i] = 2.0;
    data[i] = 0;
  }

  for (i=loop_num/2; i<loop_num; i++) {
    data[i] = 1;
  }

  sub(a,b,loop_num,10,data);

  result = 0.0;
  for (i=0; i<loop_num; i++) {
    result += a[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
