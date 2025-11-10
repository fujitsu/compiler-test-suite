














#include <stdio.h>
#include "001.h"
#define STRING1    "cv11 test program 1991.06.06 pui0102_02"
#define STRING2    "cv11 test program 1991.06.06 pui0102_03"
#define ST_NEST1   STNEST2
#define ST_NEST2   STNEST3
#define ST_NEST3   STNEST4
#define ST_NEST4   STNEST5
#define ST_NEST5   STNEST6
#define ST_NEST6   STNEST7
#define ST_NEST7   STNEST8
#define ST_NEST8   STRING2
int main()
{
#if defined uxp
#ident STRING2
#endif 
  char *ans="   ";
  header("","#ident test.") ;

#if defined uxp
  printf("\n/**************************************/");
  printf("\n/* check object list (#ident macro)  **/");
  printf("\n/**************************************/\n");
#endif 
  header("","#ident test.") ;
  }
