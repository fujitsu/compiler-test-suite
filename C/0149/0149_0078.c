#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    static struct { char a; } st[2] = { 1,2 };
    char c;
 
    c = st->a;
    if (c == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    static struct { int a; } st = { 1 },*stp = &st;
    int c;
 
    c = stp->a;
    if (c == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    static struct { long int a; } st = { 1l },*stp = &st;
    long int c;
 
    c = stp->a;
    if (c == 1l)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    static struct { short int a; } st = { 1 },*stp = &st;
    short int c;
 
    c = stp->a;
    if (c == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    static struct { signed char a; } st = { 1 },*stp = &st;
    signed char c;
 
    c = stp->a;
    if (c == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    static struct { signed int a; } st = { 1 },*stp = &st;
    signed int c;
 
    c = stp->a;
    if (c == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    static struct { signed long int a; } st = { 1l },*stp = &st;
    signed long int c;
 
    c = stp->a;
    if (c == 1l)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    static struct { signed short int a; } st = { 1 },*stp = &st;
    signed short int c;
 
    c = stp->a;
    if (c == 1)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    static struct { unsigned char a; } st = { 1u },*stp = &st;
    unsigned char c;
 
    c = stp->a;
    if (c == 1u)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    static struct { unsigned int a; } st = { 1u },*stp = &st;
    unsigned int c;
 
    c = stp->a;
    if (c == 1u)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    static struct { unsigned long int a; } st = { 1ul },*stp = &st;
    unsigned long int c;
 
    c = stp->a;
    if (c == 1ul)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    static struct { unsigned short int a; } st = { 1u },*stp = &st;
    unsigned short int c;
 
    c = stp->a;
    if (c == 1u)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static struct { int a[2]; } st = { 1,2 },*stp = &st;
    int c;
 
    c = *stp->a;
    if (c == 1)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    static struct { int *a; } st,*stp = &st;
    static int vec[5] = { 1,2,3,4,5 },c;
 
    st.a = vec;
    c = *stp->a;
    if (c == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    static struct {
                    struct { int a; } inst;
                  } outst = { 1 },*stp = &outst;
    int c;
 
    c =  stp->inst.a;
    if (c == 1)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    static struct {
                    union { int a; } un;
                  } st = { 1 },*stp = &st;
    int c;
 
    c = stp->un.a;
    if (c == 1)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    static struct {
                    enum { emem0,emem1 } en;
                  } st = { 1 },*stp = &st;
    int c;
 
    c = stp->en;
    if (c == emem1)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
