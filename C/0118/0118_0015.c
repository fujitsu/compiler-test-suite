#include <stdio.h>
#define N1 100
#define Correct_answer 67100

float a[N1];
float b[N1][200];
int    c[N1];

void foo(int n)
{
  int i;

  for (i=0; i<n; i++) {
    a[i] = b[c[i]][1] + b[c[i]][2] + b[c[i]][3] +
           b[c[i]][70] + b[c[i]][73] + b[c[i]][72] +
           b[c[i]][151] + b[c[i]][149] + b[c[i]][150] ;
  }
}

void init(int n)
{
  int i,j;
  for (i=0; i<n; i++) {
    for (j=0; j<200; j++) {
      b[i][j] = j;
    }
    a[i] = 0.;
    c[i] = i;
  }
}

int main()
{
  int i,res;

  init(N1);
  foo(N1);

  res = 0;
  for (i=0; i<N1; i++) {
    res += (int)a[i];
  }

  if (res == Correct_answer) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }

  return 0;
}
