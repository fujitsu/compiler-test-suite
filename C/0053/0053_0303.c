#include<stdio.h>
int *f(int *);
int main()
{
  printf("********** \n");
  {
    static int vec[5] = { 1,2,3,4,5 },a;

    a = *vec;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec[5] = { 1,2,3,4,5 },*a = vec,b;

    b = *a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct { int *a; } st;
    int a = 1,b;

    st.a = &a;
    b = *st.a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union { int *a; } un;
    int a = 1,b;

    un.a = &a;
    b = *un.a;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 1,b;

    b = *f(&a);
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int *f(int *a)
{
  return a;
}
