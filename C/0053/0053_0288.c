#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    static struct { char a; } st = { 1 };
    char c;

    c = st.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { int a; } un = { 1 };
    int c;

    c = un.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { long int a; } un = { 1l };
    long int c;

    c = un.a;
    if (c == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { short int a; } un = { 1 };
    short int c;

    c = un.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { signed char a; } un = { 1 };
    signed char c;

    c = un.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { signed int a; } un = { 1 };
    signed int c;

    c = un.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { signed long int a; } un = { 1l };
    signed long int c;

    c = un.a;
    if (c == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { signed short int a; } un = { 1 };
    signed short int c;

    c = un.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { unsigned char a; } un = { 1u };
    unsigned char c;

    c = un.a;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { unsigned int a; } un = { 1u };
    unsigned int c;

    c = un.a;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { unsigned long int a; } un = { 1ul };
    unsigned long int c;

    c = un.a;
    if (c == 1ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { unsigned short int a; } un = { 1u };
    unsigned short int c;

    c = un.a;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { int a[2]; } un = { 1,2 };
    int c;

    c = *un.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union { int *a; } un;
    static int vec[5] = { 1,2,3,4,5 },c;

    un.a = vec;
    c = *un.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union {
        struct { int a; } st;
    } un = { 1 };
    int c;

    c = un.st.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union {
        union { int a; } inun;
    } un = { 1 };
    int c;

    c = un.inun.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union {
        enum { emem0,emem1 } en;
    } un = { 1 };
    int c;

    c = un.en;
    if (c == emem1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
