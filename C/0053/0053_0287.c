#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    static struct { char a; } st[2] = { 1,2 };
    char c;

    c = st->a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { int a; } st = { 1 },*stp = &st;
    int c;

    c = stp->a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { long int a; } st = { 1l },*stp = &st;
    long int c;

    c = stp->a;
    if (c == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { short int a; } st = { 1 },*stp = &st;
    short int c;

    c = stp->a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { signed char a; } st = { 1 },*stp = &st;
    signed char c;

    c = stp->a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { signed int a; } st = { 1 },*stp = &st;
    signed int c;

    c = stp->a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { signed long int a; } st = { 1l },*stp = &st;
    signed long int c;

    c = stp->a;
    if (c == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { signed short int a; } st = { 1 },*stp = &st;
    signed short int c;

    c = stp->a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { unsigned char a; } st = { 1u },*stp = &st;
    unsigned char c;

    c = stp->a;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { unsigned int a; } st = { 1u },*stp = &st;
    unsigned int c;

    c = stp->a;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { unsigned long int a; } st = { 1ul },*stp = &st;
    unsigned long int c;

    c = stp->a;
    if (c == 1ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { unsigned short int a; } st = { 1u },*stp = &st;
    unsigned short int c;

    c = stp->a;
    if (c == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { int a[2]; } st = { 1,2 },*stp = &st;
    int c;

    c = *stp->a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct { int *a; } st,*stp = &st;
    static int vec[5] = { 1,2,3,4,5 },c;

    st.a = vec;
    c = *stp->a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct {
                    struct { int a; } inst;
                  } outst = { 1 },*stp = &outst;
    int c;

    c =  stp->inst.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct {
                    union { int a; } un;
                  } st = { 1 },*stp = &st;
    int c;

    c = stp->un.a;
    if (c == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct {
                    enum { emem0,emem1 } en;
                  } st = { 1 },*stp = &st;
    int c;

    c = stp->en;
    if (c == emem1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
