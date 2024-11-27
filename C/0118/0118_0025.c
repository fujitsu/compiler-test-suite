#include <stdio.h>
#define N1 100
#define Correct_answer 1500

double a[N1];
double b[N1][10];
int    c[N1];
int zzz[N1];

void foo(int n)
{
  int i;

  for (i=0; i<n; i++) {
    if (zzz[i] == 0) {
      a[i] = b[c[i]][5] + b[c[i]][4] + b[c[i]][3] + b[c[i]][2] + b[c[i]][1];
    }
  }
}

void init(int n)
{
  int i,j;
  for (i=0; i<n; i++) {
    for (j=0; j<10; j++) {
      b[i][j] = j;
    }
    a[i] = 0.;
    c[i] = i;
    zzz[i] = 0;
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
