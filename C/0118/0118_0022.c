#include <stdio.h>
#define N1 100
#define Correct_answer 1200

float a[N1];
float a1[N1];
float a2[N1];
float b[N1][200];
int    c1[N1];
int    c2[N1];
int    c3[N1];

void foo(int n)
{
  int i;

  for (i=0; i<n; i++) {
    a1[i] = b[c1[c2[c3[i]]]][1] + b[c1[c2[c3[i]]]][2] + b[c1[c2[c3[i]]]][3];
    a[i] = a1[i] + b[c3[c2[c1[i]]]][1] + b[c3[c2[c1[i]]]][2] + b[c3[c2[c1[i]]]][3] ;
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
    a1[i] = 0.;
    a2[i] = 0.;
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
