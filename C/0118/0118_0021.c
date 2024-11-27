#include <stdio.h>
#define N1 100
#define Correct_answer 50400

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

  for (i=10; i<n-10; i++) {
    a1[i] = b[c1[i]][100] + b[c1[i]][2] + b[c1[i]][101] + b[c1[i]][4] + b[c1[i]][50] + b[c1[i]][8] + b[c1[i]][102];
    a2[i] = a1[i] + b[c2[i]][50] + b[c2[i]][51] + b[c2[i]][52] + b[c2[i]][53] + b[c2[i]][54];
    a[i] = a2[i] + b[c1[i]+1][1] + b[c1[i]-1][1] + b[c1[i]+5][1];
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
