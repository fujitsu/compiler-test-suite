#include <stdio.h>
#define N1 100
#define Correct_answer 1200

double a[N1];
double b[N1][10];
int    c1[N1];
int    c2[N1];
int    c3[N1];

void foo(int n)
{
  int i;

  for (i=0; i<n; i++) {
    a[i] = b[c1[i]][5] + b[c2[i]][4] + b[c3[i]][3];
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
    c1[i] = i;
    c2[i] = i;
    c3[i] = i;
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
