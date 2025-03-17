#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int *f(int *);
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    static int vec[5] = { 1,2,3,4,5 },a;
 
    a = *vec;
    if (a == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    static int vec[5] = { 1,2,3,4,5 },*a = vec,b;
 
    b = *a;
    if (b == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    struct { int *a; } st;
    int a = 1,b;
 
    st.a = &a;
    b = *st.a;
    if (b == 1)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    union { int *a; } un;
    int a = 1,b;
 
    un.a = &a;
    b = *un.a;
    if (a == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    int a = 1,b;
 
    b = *f(&a);
    if (b == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int *f(int *a)
{
  return a;
}
