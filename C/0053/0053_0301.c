#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 3,b = 2,c;

    c = a - b;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 3,b = 2,c;

    c = a - b;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 3l,b = 2l,c;

    c = a - b;
    if (c == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 3,b = 2,c;

    c = a - b;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 3,b = 2,c;

    c = a - b;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 3,b = 2,c;

    c = a - b;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 3l,b = 2l,c;

    c = a - b;
    if (c == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 3,b = 2,c;

    c = a - b;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 3u,b = 2u,c;

    c = a - b;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 3u,b = 2u,c;

    c = a - b;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 3ul,b = 2ul,c;

    c = a - b;
    if (c == 1lu)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 3u,b = 2u,c;

    c = a - b;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    char vec[5] = { 1,2,3,4,5 },*a = vec,*b = vec,c;

    c = a - b;
    if (c == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static char vec[5] = { 1,2,3,4,5 },*a = &vec[2],b = 1,c;

    c = *( a - b );
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
