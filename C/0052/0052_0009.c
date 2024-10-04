#include <stdio.h>



int main()
{

  printf("********** 10 TEST START **********\n");

  {
    union utag
    {
      int      a ;
      int      b ;
      int      c ;
    } ;
    union utag un ;
    union utag *unptr ;
    unptr=&un ;

    un.a = -1;

    if (un.a == -1)
        printf("***** 10 - 01 ***** O   K *****\n");
      else
        printf("***** 10 - 01 ***** N   G *****\n");

    unptr->b = 0 ;

    if (unptr->b == 0)
        printf("***** 10 - 02 ***** O   K *****\n");
      else
        printf("***** 10 - 02 ***** N   G *****\n");

    un.c = 10000 ;

    if (un.c == 10000)
        printf("***** 10 - 03 ***** O   K *****\n");
      else
        printf("***** 10 - 03 ***** N   G *****\n");
  }
  {
    enum enumtag { a, b=10, c } ;
    enum enumtag enumval;
    int x,y,z;

    x = a ;

    if (x == 0)
        printf("***** 10 - 04 ***** O   K *****\n");
      else
        printf("***** 10 - 04 ***** N   G *****\n");

    y = b ;

    if (y == 10)
        printf("***** 10 - 05 ***** O   K *****\n");
      else
        printf("***** 10 - 05 ***** N   G *****\n");

    z = c ;

    if (z == 11)
        printf("***** 10 - 06 ***** O   K *****\n");
      else
        printf("***** 10 - 06 ***** N   G *****\n");

    enumval = a ;

    if (enumval == 0)
        printf("***** 10 - 07 ***** O   K *****\n");
      else
        printf("***** 10 - 07 ***** N   G *****\n");

    enumval = b ;

    if (enumval == 10)
        printf("***** 10 - 08 ***** O   K *****\n");
      else
        printf("***** 10 - 08 ***** N   G *****\n");

    enumval = c ;

    if (enumval == 11)
        printf("***** 10 - 09 ***** O   K *****\n");
      else
        printf("***** 10 - 09 ***** N   G *****\n");

    enumval = 0 ;

    if (enumval == a)
        printf("***** 10 - 10 ***** O   K *****\n");
      else
        printf("***** 10 - 10 ***** N   G *****\n");

    enumval = 10;

    if (enumval == b)
        printf("***** 10 - 11 ***** O   K *****\n");
      else
        printf("***** 10 - 11 ***** N   G *****\n");

    enumval = 11;

    if (enumval == c)
        printf("***** 10 - 12 ***** O   K *****\n");
      else
        printf("***** 10 - 12 ***** N   G *****\n");
  }

  printf("********** 10 TEST  END  **********\n");
}
