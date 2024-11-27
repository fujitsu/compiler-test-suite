
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 3000

void sub(double *a, double *b, int *c, int *d, int n, int *m)
{
  int i,index;
  for (i=0; i<n; i++) {
    if (m[i]) {
      index = c[i];
    } else {
      index = d[i];
    }
    a[i] = a[i] + b[index];
  }
  return;
}

int main()
{
  double a[loop_num], b[loop_num];
  int c[loop_num],d[loop_num],m[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0;
    b[i] = 2.0;
    c[i] = i;
    d[i] = i;
    m[i] = 0;
  }
  for (i=0; i<loop_num; i=i+2) {
    m[i] = 1;
  }

  sub(a,b,c,d,loop_num,m);

  result = 0;
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
