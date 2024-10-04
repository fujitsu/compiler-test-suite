#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 2;

    a = b;
    if (a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int *a,val1 = 2,*b = &val1;

    a = b;
    if (*a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int *a,vec[2] = { 1,2 };

    a = vec;
    if (*a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int (*a)(),fnc(void);

    a = fnc;
    if ((*a)() == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int *a;

    a = 0;
    if (a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int fnc()
{
  return 1;
}
