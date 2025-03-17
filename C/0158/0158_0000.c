#include <stdio.h>
#define n 10
#define EXPECTED_VALUE 100

void foo(double a[n][n], double b[n][n])
{
  int i,j;

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }
  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }


  return;
}

void foo2(double a[n][n], double b[n][n])
{
  int i,j;

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }
  return;
}

void foo3(double a[n][n], double b[n][n])
{
  int i,j;

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }
  return;
}

void foo4(double a[n][n], double b[n][n])
{
  int i,j;

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }
  return;
}

void foo5(double a[n][n], double b[n][n])
{
  int i,j;

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = b[i][j];
    }
  }

  return;
}

int main()
{
  int i,j,result;
  double a[n][n],b[n][n];

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      a[i][j] = 0;
      b[i][j] = 1;
    }
  }

  foo(a,b);
  foo2(a,b);
  foo3(a,b);
  foo4(a,b);
  foo5(a,b);

  result = 0;
  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      result += a[i][j];
    }
  }

  if (result == EXPECTED_VALUE) {
    printf("ok\n");
  } else {
    printf("ng ... %d\n",result);
  }
  return 0;
}
