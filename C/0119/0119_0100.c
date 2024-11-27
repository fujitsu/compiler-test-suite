#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
static int f1() ;
int        f2() ;
static int v1 = 1 ;
int        v2 = 2 ;

int        (*pf1)()=f1 ;
int        (*pf2)()=f2 ;
static int (*pf3)()=f1 ;
static int (*pf4)()=f2 ;
int        *pv1=&v1 ;
int        *pv2=&v2 ;
static int *pv3=&v1 ;
static int *pv4=&v2 ;
int main()
{
  static int (*pf5)()=f1 ;
  static int (*pf6)()=f2 ;
  static int *pv5=&v1 ;
  static int *pv6=&v2 ;

  printf("********** SCPII17 TEST START **********\n");

  if (*pv1 == 1 && *pv3 == 1 && *pv5 == 1)
    printf(" V1 ---> O K\n");
  else
    printf(" V1 ---> N G\n");

  if (*pv2 == 2 && *pv4 == 2 && *pv6 == 2)
    printf(" V2 ---> O K\n");
  else
    printf(" V2 ---> N G\n");

  (*pf1)() ;
  (*pf3)() ;
  (*pf5)() ;

  (*pf2)() ;
  (*pf4)() ;
  (*pf6)() ;

  printf("********** SCPII17 TEST  END  **********\n");

exit (0);
}

static  int dummy () { }
static  int f1()
{
  printf(" F1 ---> O K\n");
}
int f2()
{
  printf(" F2 ---> O K\n");
}
