#include <stdio.h>
#define N1 100
#define Correct_answer 8000

double a[N1];
double a1[N1];
double b[N1][100];
int    c[N1];
int zzz[N1];

void foo(int n)
{
  int i;

  for (i=0; i<n; i++) {
    a1[i] = b[c[i]][5] + b[c[i]][4] + b[c[i]][3] + b[c[i]][2] + b[c[i]][1];
    if (zzz[i] == 0) {
      a[i] = a1[i] + b[c[i]][15] + b[c[i]][14] + b[c[i]][13] + b[c[i]][12] + b[c[i]][11];
    } else {
      a[i] = a1[i] + b[c[i]][80] + b[c[i]][81] + b[c[i]][82] + b[c[i]][83] + b[c[i]][84];
    }
  }
}

void init(int n)
{
  int i,j;
  for (i=0; i<n; i++) {
    for (j=0; j<100; j++) {
      b[i][j] = j;
    }
    a[i] = 0.;
    a1[i] = 0.;
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
