#include  <stdio.h>

int main()
{
  int              a       = 1      ;
  int             *x_p1    = &a     ;
  int            **x_p2    = &x_p1  ;
  int           ***x_p3    = &x_p2  ;
  int          ****x_p4    = &x_p3  ;
  int         *****x_p5    = &x_p4  ;
  int        ******x_p6    = &x_p5  ;
  int       *******x_p7    = &x_p6  ;
  int      ********x_p8    = &x_p7  ;
  int     *********x_p9    = &x_p8  ;
  int    **********x_p10   = &x_p9  ;
  int   ***********x_p11   = &x_p10 ;
  int  ************x_p12   = &x_p11 ;
  int *************super_p = &x_p12 ;

  printf("**** START **** \n") ;

  if ((*************super_p) == 1)
    printf(" *** OK *** \n") ;
  else
    {
    printf(" *** NG *** \n") ;
    printf("  SUPER_P->%d \n",(*************super_p)) ;
    }

  printf("****  E N D  **** \n") ;
}
