#include<stdio.h>
int main()
{
  int a = 10,*aa = &a,**aaa = &aa;

  int *volatile const a01 = (int *volatile const)aa;
  int **volatile const a02 = (int **volatile const)aaa;
  int *volatile *const a03 = (int *volatile *const)aaa;
  int *const *volatile a04 = (int *const *volatile)aaa;
  int *volatile const *a05 = (int *volatile const *)aaa;
  int *volatile *const *a06 = (int *volatile *const *)&aaa;
  int *const *volatile *a07 = (int *const *volatile *)&aaa;
  int *volatile a08 = (int *volatile)aa;
  int **volatile a09 = (int **volatile)aaa;
  int *volatile *a10 = (int *volatile *)aaa;
  int *const a11 = (int *const)aa;
  int **const a12 = (int **const)aaa;
  int *const *a13 = (int *const *)aaa;

  if (*a01 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (**a02 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (**a03 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (**a04 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (**a05 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (***a06 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (***a07 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (*a08 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (**a09 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (**a10 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (*a11 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (**a12 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (**a13 == 10)
      printf("***** \n");
    else
      printf("***** \n");
}
