#include <stdio.h>



int main()
{
  int a;
  struct tag
  {
    int  a ;
    int  b ;
  } st ;
  struct tag *stptr;
  stptr = &st ;

  printf("********** 04 TEST START **********\n");

  st.a=10;
  a = st.a ;

  if (a == 10)
      printf("***** 04 - 01 ***** O   K *****\n");
    else
      printf("***** 04 - 01 ***** N   G *****\n");
  if (st.a == 10)
      printf("***** 04 - 02 ***** O   K *****\n");
    else
      printf("***** 04 - 02 ***** N   G *****\n");

  stptr->b=100 ;
  a=stptr->b ;

  if (a == 100)
      printf("***** 04 - 03 ***** O   K *****\n");
    else
      printf("***** 04 - 03 ***** N   G *****\n");
  if (stptr->b == 100)
      printf("***** 04 - 04 ***** O   K *****\n");
    else
      printf("***** 04 - 04 ***** N   G *****\n");

  printf("********** 04 TEST  END  **********\n");
}
