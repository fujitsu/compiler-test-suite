
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 1200

void sub(double *a, double *b, int *c, int *d,
	 int *e, int *f, int *g, int n, int k)
{
  int i;
  for (i=0; i<n; i=i+k) {
    a[c[d[e[f[g[i]]]]]] = a[c[d[e[f[g[i]]]]]] + b[c[d[e[f[g[i]]]]]];
  }
  return;
}

int main()
{
  double a[loop_num], b[loop_num];
  int c[loop_num],d[loop_num],e[loop_num];
  int f[loop_num],g[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0;
    b[i] = 2.0;
    c[i] = i;
    d[i] = i;
    e[i] = i;
    f[i] = i;
    g[i] = i;
  }

  sub(a,b,c,d,e,f,g,loop_num,10);

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
