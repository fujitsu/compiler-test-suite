#include <stdio.h>
#define N 30
#define ians 125

void sub1(double * restrict a)
{
  int i;
  
  for (i=0; i<9; i++) {
    a[i] = 1.;
  }
}

void sub2(double * restrict a)
{
  int i;
  
  for (i=0; i<10; i++) {
    a[i] = 1.;
  }
}

void sub3(double * restrict a)
{
  int i;
  
  for (i=0; i<11; i++) {
    a[i] = 1.;
  }
}

void sub4(double * restrict a, int n)
{
  int i;
  
  for (i=0; i<n; i++) {
    a[i] = 1.;
  }
}

int main()
{
  double a1[9],a2[10],a3[11],a4[N];
  int i;

  sub1(a1);
  sub2(a2);
  sub3(a3);
  sub4(a4,N);

  for (i=0; i<9; i++) {
    if (a1[i] != 1.) {
      printf("ng\n");
    }
  }

  for (i=0; i<10; i++) {
    if (a2[i] != 1.) {
      printf("ng\n");
    }
  }

  for (i=0; i<11; i++) {
    if (a3[i] != 1.) {
      printf("ng\n");
    }
  }

  for (i=0; i<N; i++) {
    if (a4[i] != 1.) {
      printf("ng\n");
    }
  }
  printf("ok\n");

  return 0;
}
