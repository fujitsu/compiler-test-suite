#include<stdio.h>
int f1(int []);
int f2(int *[]);
int f3(int (*[]));
int f4(int **[]);

static int st1 = 1;
int main()
{
  int a = 1,*aa = &a,**aaa = &aa,***aaaa = &aaa;

  if (f1(aa) == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (f2(aaa) == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (f3(aaa) == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (f4(aaaa) == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

int f1(int a[])
{
  return (*a);
}

int f2(int *a[])
{
  return (**a);
}

int f3(int (*a[]))
{
  return (**a);
}

int f4(int **a[])
{
  return (***a);
}
