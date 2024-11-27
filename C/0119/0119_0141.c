#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int          x0000001 = 1 ;
short        x0000002 = 2 ;
static int   s000000000000000000000000000000000000000000000000001 = 3 ;
static int   s000000000000000000000000000000000000000000000000002 = 4 ;
int          f0000001() ;
int          f0000002() ;
static int   fs0000001() ;
static int   fs0000002() ;
int main()
{
  int y ;

  printf("**** SCPLS03 **** \n") ;

  if (x0000001 == 1)
    printf(" *** 1 - OK *** \n") ;
  else
    {
    printf(" *** 1 - NG *** \n") ;
    printf("    %d \n",x0000001) ;
    }
  if (x0000002 == 2)
    printf(" *** 2 - OK *** \n") ;
  else
    {
    printf(" *** 2 - NG *** \n") ;
    printf("    %d \n",x0000002) ;
    }
  if (s000000000000000000000000000000000000000000000000001 == 3)
    printf(" *** 3 - OK *** \n") ;
  else
    {
    printf(" *** 3 - NG *** \n") ;
    printf("    %d \n",
            s000000000000000000000000000000000000000000000000001) ;
    }
  if (s000000000000000000000000000000000000000000000000002 == 4)
    printf(" *** 4 - OK *** \n") ;
  else
    {
    printf(" *** 4 - NG *** \n") ;
    printf("    %d \n",
            s000000000000000000000000000000000000000000000000002) ;
    }
  if ((y=f0000001()) == 1)
    printf(" *** 5 - OK *** \n") ;
  else
    {
    printf(" *** 5 - NG *** \n") ;
    printf("    %d \n", y) ;
    }
  if ((y=f0000002()) == 2)
    printf(" *** 6 - OK *** \n") ;
  else
    {
    printf(" *** 6 - NG *** \n") ;
    printf("    %d \n", y) ;
    }
  if ((y=fs0000001()) == 3)
    printf(" *** 7 - OK *** \n") ;
  else
    {
    printf(" *** 7 - NG *** \n") ;
    printf("    %d \n", y) ;
    }
  if ((y=fs0000002()) == 4)
    printf(" *** 8 - OK *** \n") ;
  else
    {
    printf(" *** 8 - NG *** \n") ;
    printf("    %d \n", y) ;
    }

  printf("****  E N D  **** \n") ;
exit (0);
}

int f0000001()
{
  return 1 ;
}

int f0000002()
{
  return 2 ;
}

static int fs0000001()
{
  return 3 ;
}

static int fs0000002()
{
  return 4 ;
}
