#include <stdio.h>



int main()
{
  struct  tag
  {
    unsigned int a : 1;
#ifdef __STDC__
    signed int b : 1;
#else
    int        b : 1;
#endif
  };
  struct tag st;
  struct tag *stptr;

  printf("********** 07 TEST START **********\n");
  stptr = &st ;
  st.a = 1 ;
  stptr->b = 0;

  if (st.a == 1)
      printf("***** 07 - 01 ***** O   K *****\n");
    else
      printf("***** 07 - 01 ***** N   G *****\n");
  if (stptr->b == 0)
      printf("***** 07 - 02 ***** O   K *****\n");
    else
      printf("***** 07 - 02 ***** N   G *****\n");

  printf("********** 07 TEST  END  **********\n");
}
