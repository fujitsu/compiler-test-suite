#include <stdio.h>
static int loop_for_const(double a[100][100])
{
  int i, j, c=0;

  for (j=0; j<100; ++j) {
    for (i=0; i<100; ++i) {
      if (a[j][i] > 100) {
	c = c + 1;
      }
    }
  }
  return c;
}

static int loop_while_const(double a[100][100])
{
  int i, j, c=0;

  j = 0;
  while (j<100) {
    i = 0;
    while (i<100) {
      if (a[j][i] > 100) {
	c = c + 1;
      }
      ++i;
    }
    ++j;
  }
  return c;
}

static int loop_dowhile_const(double a[100][100])
{
  int i, j, c=0;

  j = 0;
  do {
    i = 0;
    do {
      if (a[j][i] > 100) {
	c = c + 1;
      }
      ++i;
    } while (i<100);
    ++j;
  } while(j<100);
  return c;
}

static int loop_ifgoto_const(double a[100][100])
{
  int i, j, c=0;

  j = 0;
 LOOP1:
  i = 0;
 LOOP2:
  if (a[j][i] > 100) {
    c = c + 1;
  }
  ++i;
  if (i<100) goto LOOP2;
  ++j;
  if (j<100) goto LOOP1;
  return c;
}

static int loop_for_n(double a[100][100], int n)
{
  int i, j, c=0;

  for (j=0; j<n; ++j) {
    for (i=0; i<n; ++i) {
      if (a[j][i] > 100) {
	c = c + 1;
      }
    }
  }
  return c;
}

static int loop_while_n(double a[100][100], int n)
{
  int i, j, c=0;

  j = 0;
  while (j<n) {
    i = 0;
    while (i<n) {
      if (a[j][i] > 100) {
	c = c + 1;
      }
      ++i;
    }
    ++j;
  }
  return c;
}

static int loop_dowhile_n(double a[100][100], int n)
{
  int i, j, c=0;

  j = 0;
  do {
    i = 0;
    do {
      if (a[j][i] > 100) {
	c = c + 1;
      }
      ++i;
    } while (i<n);
    ++j;
  } while(j<n);
  return c;
}

static int loop_ifgoto_n(double a[100][100], int n)
{
  int i, j, c=0;

  j = 0;
 LOOP1:
  i = 0;
 LOOP2:
  if (a[j][i] > 100) {
    c = c + 1;
  }
  ++i;
  if (i<n) goto LOOP2;
  ++j;
  if (j<n) goto LOOP1;
  return c;
}
int main() 
{
  int i,j;
  double a[100][100];

  for (j=0; j<100; ++j) {
    for (i=0; i<100; ++i) {
      a[j][i] = (double)(i+j);
    }
  }
  printf("%d\n", loop_for_const(a));
  printf("%d\n", loop_while_const(a));
  printf("%d\n", loop_dowhile_const(a));
  printf("%d\n", loop_ifgoto_const(a));
  printf("%d\n", loop_for_n(a,100));
  printf("%d\n", loop_while_n(a,100));
  printf("%d\n", loop_dowhile_n(a,100));
  printf("%d\n", loop_ifgoto_n(a,100));
}
