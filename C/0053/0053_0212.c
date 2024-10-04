#include<stdio.h>
int main()
{
  int *a01;
  int **a02;
  int ***a03;
  int **********a04;
  int *a05[2];
  int *a06[2][2];
  int **a07[2];
  int **a08[2][2];
  int (*a09)[2];
  int (*a10[2])[2];
  int *(a11[2])[2];
  int a = 10;

  a01 = &a;
  if (*a01 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  a02 = &a01;
  if (**a02 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  a03 = &a02;
  if (***a03 == 10)
      printf("***** \n");
    else
      printf("***** \n");

  {
    int ****d1      = &a03;
    int *****d2     = &d1;
    int ******d3    = &d2;
    int *******d4   = &d3;
    int ********d5  = &d4;
    int *********d6 = &d5;

    a04 = &d6;
    if (**********a04 == 10)
        printf("***** \n");
      else
        printf("***** \n");
  }

  a05[0] = a01;
  if (*a05[0] == 10)
      printf("***** \n");
    else
      printf("***** \n");

  a06[0][0] = a01;
  if (*a06[0][0] == 10)
      printf("***** \n");
    else
      printf("***** \n");

  a07[1] = a02;
  if (**a07[1] == 10)
      printf("***** \n");
    else
      printf("***** \n");

  a08[1][1] = a02;
  if (**a08[1][1] == 10)
      printf("***** \n");
    else
      printf("***** \n");

  {
    static int aa[2] = { 10,20 };

    a09 = &aa;
    if ((*a09)[1] == 20)
        printf("***** \n");
      else
        printf("***** \n");

    a10[0] = &aa;
    if ((*a10[0])[0] == 10)
        printf("***** \n");
      else
        printf("***** \n");

    (a11[1])[0] = a01;
    if (*(a11[1])[0] == 10)
        printf("***** \n");
      else
        printf("***** \n");
  }
}
