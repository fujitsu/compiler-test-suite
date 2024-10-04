#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int *a,*b;
    void *c = NULL;

    a = c;
    b = c;
    if (a == b)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct tag { int a; } *st1,*st2;
    void *c = NULL;

    st1 = c;
    st2 = c;
    if (st1 == st2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
