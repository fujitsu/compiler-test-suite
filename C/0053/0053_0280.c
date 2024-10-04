#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a = 3,b = 2,c;

    if ( a >= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a = 3,b = 2,c;

    if ( a >= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a = 3l,b = 2l,c;

    if ( a >= b ) c = 1l; else c = 2l;
    if (c == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a = 3,b = 2,c;

    if ( a >= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a = 3,b = 2,c;

    if ( a >= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a = 3,b = 2,c;

    if ( a >= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a = 3l,b = 2l,c;

    if ( a >= b ) c = 1l; else c = 2l;
    if (c == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a = 3,b = 2,c;

    if ( a >= b ) c = 1; else c = 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a = 3u,b = 2u,c;

    if ( a >= b ) c = 1u; else c = 2u;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a = 3u,b = 2u,c;

    if ( a >= b ) c = 1u; else c = 2u;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a = 3ul,b = 2ul,c;

    if ( a >= b ) c = 1ul; else c = 2ul;
    if (c == 1ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a = 3u,b = 2u,c;

    if ( a >= b ) c = 1u; else c = 2u;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct {
        int a[2],b[2];
    } st = { 1,2,3,4 };
    int c;

    if ( st.a >= st.b ) c = 1; else c = 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec[5],*a = &vec[2],*b = &vec[4],c;

    if ( a >= b ) c = 1 ; else c = 2;
    if (c == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { emem0,emem1 } en1 = 1,en2 = 0;
    int c;

    if ( en1 >= en2 ) c = 1; else c = 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int func1(),c;

    if ( func1 >= func1) c = 1; else c = 2;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int func1()
{
  return 1;
}
