
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
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
int sub10();

int M3K13501()
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
#pragma clang loop unroll_count(8)
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
#pragma clang loop unroll_count(8)
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
#pragma clang loop unroll_count(8)
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
#pragma clang loop unroll_count(8)
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
#pragma clang loop unroll_count(8)
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
#pragma clang loop unroll_count(8)
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
#pragma clang loop unroll_count(3)
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
#pragma clang loop unroll_count(3)
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
#pragma clang loop unroll_count(4)
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

 int M3K13601()
{
  sub10();
}
 int sub10()
{
  int i;
  int **kkk[10];
  int *kk[10];
  int k[10];
  int **sss[10];
  int *ss[10];
  int s[10];
  int p[10];
  for(i=0;i<10;i++)
    {
      k[i]=i;
    }
  for(i=0;i<10;i++)
    {
      kk[i]=&k[i];
    }
  for(i=0;i<10;i++)
    {
      kkk[i]=&kk[i];
    }
  for(i=0;i<10;i++)
    {
      s[i]=i;
    }
  for(i=0;i<10;i++)
    {
      ss[i]=&s[i];
    }
  for(i=0;i<10;i++)
    {
      sss[i]=&ss[i];
    }
  
  for(i=0;i<10;i++)
    {
      p[i]=**kkk[i]+**sss[9-i];
    }
  for(i=0;i<10;i++)
    {
      if(p[i]!=9)
	printf("ng %d\n",p[i]);
    }
  printf("ok\n");
}

long long int 
sub_11 (i)
     int i;
{
  return (long long int) i;
}
 int M3K13602()
{
  char *x = (char *) malloc (20);
  long long int a;
  long long int b;
  int i;
  a = sub_11 (5);
  b = sub_11 (5);
  sprintf (x, "test1");
  for (i = 0; i < 10; i++)
    {
      a = sub_11 (5);
      b = sub_11 (5);
      
      memcpy (x + a, x, (int) b);
    }
  a = sub_11 (2);
  if (x[a] == x[a + 5])
    puts ("ok");
  else
    puts ("ng");

  free(x);
}

#include <stdlib.h>

typedef struct aa 
{
  char g[10000];
  int p;
} T;
static int p=100;

static void sub_12(L)
     int L;
{
  int i;
  T *g[100];
  for(i=0;i<100;i++)
    {
      g[i]=(T *)malloc(sizeof(T));
    }
  for(i=L;i<0;i++)
    {
      
      g[i+p]->p=i+p;
    }
  for(i=0;i<100;i++)
    {
      if(g[i]->p!=i)
	(void)printf("ng,%d,%d\n",i,g[i]->p);
    }

  for(i=0;i<100;i++)
    {
      free( g[i] );
    }
  return;
}
  
 int M3K13603()
{
  sub_12(-100);
  (void)printf("ok\n");
  return 0;
}

 int M3K13604()
{
  int i;
  int j;
  static int a[40];
  j=0;
				
  for(i=0;i<20;i++)
    {
      a[i+j]=i+j;
      a[i+j]=a[i+j]*(i+j)+j+i;
      j++;
    }
  if(i!=20)
    printf("ng,%d\n",i);
  for(i=0;i<20;i+=2)
    {
      if(a[i]!=(i+1)*i)
	printf("ng,%d\n",a[i]);
    }
  printf("ok\n");
}
int main(){
  M3K13501();
  M3K13601();
  M3K13602();
  M3K13603();
  M3K13604();
}
