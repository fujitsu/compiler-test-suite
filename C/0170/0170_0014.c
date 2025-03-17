#include <stdio.h>
int check (int b[10]);
int init (int a[10], int b[10]);
int sub9 (int L);
int sub8 (int L);
int sub7 (int L);
int sub6 (int L);
int sub5 (int L);
int sub4 (int L);
int sub3 (int L);
int sub2 (int L);
int sub1 (int L);


int main(void)
{
  sub1 (-1);
  sub2 (1);
  sub3 (3);
  sub4 (8);
  sub5 (9);
  sub6 (10);
  sub7 (9);
  sub8 (10);
  sub9 (10);
  printf ("ok\n");
  return 0;
}


int sub1 (L)
     int L;
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (8)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 0)
    printf ("ng1,%d\n", r);
}


int sub2 (L)
     int L;
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (8)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 1)
    printf ("ng2,%d\n", r);
}


int sub3 (L)
     int L;
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (8)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 3)
    printf ("ng3,%d\n", r);
}


int sub4 (int L)
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (8)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 8)
    printf ("ng4,%d\n", r);
}


int sub5 (int L)
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (8)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 9)
    printf ("ng5,%d\n", r);
}


 int sub6 (int L)
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (8)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 10)
    printf ("ng6,%d\n", r);
}



 int sub7 (int L)
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (3)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 9)
    printf ("ng7,%d\n", r);
}


 int sub8 (int L)
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (3)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 10)
    printf ("ng8,%d\n", r);
}


 int sub9 (int L)
{
  int i;
  int a[10];
  int b[10];
  int *p;
  int r;
  p = a;
  init (a, b);
#pragma loop unroll (4)
  for (i = 0; i < L; i++)
    b[i] = *p++;
  if ((r = check (b)) != 10)
    printf ("ng9,%d\n", r);
}

 int init (a, b)
     int a[10], b[10];
{
  int i;
  for (i = 0; i < 10; i++)
    b[i] = 0;
  a[0] = 3;
  a[1] = 33;
  a[2] = 4;
  a[3] = 44;
  a[4] = 5;
  a[5] = 55;
  a[6] = 6;
  a[7] = 66;
  a[8] = 7;
  a[9] = 77;
}

int
check (b)
     int b[10];
{
  int a[10];
  int i;
  for (i = 0; i < 10; i++)
    a[i] = 0;
  a[0] = 3;
  a[1] = 33;
  a[2] = 4;
  a[3] = 44;
  a[4] = 5;
  a[5] = 55;
  a[6] = 6;
  a[7] = 66;
  a[8] = 7;
  a[9] = 77;
  for (i = 0; i < 10; i++)
    if (a[i] != b[i])
      break;
  return i;
}
