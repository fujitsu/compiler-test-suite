#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 0;

    ++a;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 0;

    ++a;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 0;

    ++a;
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 0;

    ++a;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 0;

    ++a;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 0;

    ++a;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 0;

    ++a;
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 0;

    ++a;
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 0;

    ++a;
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 0;

    ++a;
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 0;

    ++a;
    if (a == 1ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 0;

    ++a;
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int a[5] = { 1,2,3,4,5 },*p = &a[0];

    p++;
    if (*p == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
