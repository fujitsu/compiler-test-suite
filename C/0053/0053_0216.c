#include<stdio.h>
int main()
{
  int a = 10,*aa = &a,**aaa = &aa;

  int *volatile const a01 = (int *volatile const)aa;
  int *volatile *const a02 = (int *volatile *const)aaa;
  int *const *volatile a03 = (int *const *volatile)aaa;
  int *volatile a04 = (int *volatile)aa;
  int *const a05 = (int *const)aa;

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

  if (*a04 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  if (*a05 == 10)
      printf("***** \n");
    else
      printf("***** \n");
}
