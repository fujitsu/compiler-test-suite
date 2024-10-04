#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char a; int b;

    b = sizeof a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a,b;

    b = sizeof a;
#if INT64
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int a; int b;

    b = sizeof a;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int a; int b;

    b = sizeof a;
    if (b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char a; int b;

    b = sizeof a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int a; int b;

    b = sizeof a;
#if INT64
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int a; int b;

    b = sizeof a;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int a; int b;

    b = sizeof a;
    if (b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char a; int b;

    b = sizeof a;
    if (b == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int a; int b;

    b = sizeof a;
#if INT64
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int a; int b;

    b = sizeof a;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int a; int b;

    b = sizeof a;
    if (b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a[3],b;

    b = sizeof a;
#if INT64
    if (b == 24)
#else
    if (b == 12)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int *a,b;

    b = sizeof a;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct { int a; int b; } st; int b;

    b = sizeof st;
#if INT64
    if (b == 16)
#else
    if (b == 8)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union { int a; int b; } un; int b;

    b = sizeof un;
#if INT64
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { emem0,emem1 } en; int b;

    b = sizeof en;
#if INT64
    if (b == 8)
#else
    if (b == 4)
#endif
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
