#include<stdio.h>
int main()
{
  int a01 = 1;
  static int a02[2] = { 1,2 };
  static int a03[2][2] = { { 1,2 }, { 3,4 } };
  static int a04[2][2][2]
              = { { { 1,2 }, { 3,4 } },
                   { { 5,6 }, { 7,8 } } };
  static int a05[2][2][2][2][2][2][2][2][2][2]
              = { 0,0,0,0,0,0,0,0,0,1 };
  extern int f01();
  extern int f02(int);
  static struct tag1 { int a:2; } s01 = { 3 };
  int (a06) = 1;
  static int (a07)[2] = { 1,2 };
  extern int (f03)();
  static struct tag2 { int (a):1; } s02 = { 1 };
  int ((a08)) = 1;

  if (a01 == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (a02[1] == 2)
      printf("***** \n");
    else
      printf("***** \n");

  if (a03[1][0] == 3)
      printf("***** \n");
    else
      printf("***** \n");

  if (a04[0][1][1] == 4)
      printf("***** \n");
    else
      printf("***** \n");

  if (a05[0][0][0][0][0][0][1][0][0][1] == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (f01() == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (f02(100) == 10)
      printf("***** \n");
    else
      printf("***** \n");

#if defined(__GNUC__)
  if (s01.a == -1)
#else
  if (s01.a == -1)
#endif
      printf("***** \n");
    else
      printf("***** \n");

  if (a06 == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (a07[0] == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (f03() == 3)
      printf("***** \n");
    else
      printf("***** \n");

#if defined(__GNUC__)
  if (s02.a == -1)
#else
  if (s02.a == -1)
#endif
      printf("***** \n");
    else
      printf("***** \n");

  if (a08 == 1)
      printf("***** \n");
    else
      printf("***** \n");
}

int f01()
{
  return (1);
}

int f02(int a)
{
  return (a/10);
}

int f03()
{
  return (3);
}
