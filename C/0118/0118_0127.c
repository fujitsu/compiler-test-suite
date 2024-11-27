
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 1900

void sub(double *a, double *b, double *c, double *d, int *e, int *f, int *g, int n, int k)
{
  int i;
  for (i=0; i<n; i=i+k) {
    a[i] = a[e[f[g[i]]]] + b[e[f[g[i]]]] + c[e[i]] + d[i];
  }
  return;
}

int main()
{
  double a2[loop_num],b2[loop_num],c2[loop_num],d2[loop_num];
  int e[loop_num],f[loop_num],g[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a2[i] = 1.0;
    b2[i] = 2.0;
    c2[i] = 3.0;
    d2[i] = 4.0;
    e[i] = i;
    f[i] = i;
    g[i] = i;
  }

  sub(a2,b2,c2,d2,e,f,g,loop_num,10);

  result = 0;
  for (i=0; i<loop_num; i++) {
    result += a2[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
