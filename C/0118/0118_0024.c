#include <stdio.h>
#define N1 100
#define Correct_answer 120000

float a[N1][N1];
float a1[N1][N1];
float b[N1][200];
int    c1[N1];
int    c2[N1];
int    c3[N1];

void foo(int n)
{
  int i,j;

  for (i=0; i<n; i++) {
  for (j=0; j<n; j++) {
    a1[i][j] = b[c1[c2[c3[j]]]][1] + b[c1[c2[c3[j]]]][2] + b[c1[c2[c3[j]]]][3];
    a[i][j] = a1[i][j] + b[c2[c1[c3[j]]]][1] + b[c2[c1[c3[j]]]][2] + b[c2[c1[c3[j]]]][3];
  }
  }
}

void init(int n)
{
  int i,j;
  for (i=0; i<n; i++) {
    for (j=0; j<200; j++) {
      b[i][j] = j;
    }
    for (j=0; j<N1; j++) {
      a[i][j] = 0.;
      a1[i][j] = 0.;
    }
    c1[i] = i;
    c2[i] = i;
    c3[i] = i;
  }
}

int main()
{
  int i,j,res;

  init(N1);
  foo(N1);

  res = 0;
  for (i=0; i<N1; i++) {
  for (j=0; j<N1; j++) {
    res += (int)a[i][j];
  }
  }

  if (res == Correct_answer) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }

  return 0;
}
