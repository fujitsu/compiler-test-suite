#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  int           i   = 5                                           ;
  int           ti                                                ;
  float         f   = 5.0f                                        ;
  float         tf                                                ;
  double        d   = 5.0                                         ;
  double        td                                                ;
  long   double ld  = 5.0l                                        ;
  long   double tld                                               ;

  printf("********** SCOAD01 TEST STARTED **********\n")      ;


  ti = i*2.0f                                                     ;
  if (ti == 10)
    printf("********** SCOAD01 - 01 OK **********\n")         ;
  else
    printf("********** SCOAD01 - 01 NG **********\n")         ;

  tf = f*2.0f                                                     ;
  if (tf>9.9f && tf<10.1f)
    printf("********** SCOAD01 - 02 OK **********\n")         ;
  else
    printf("********** SCOAD01 - 02 NG **********\n")         ;

  td = d*2.0                                                      ;
  if (td>9.9 && td<10.1)
    printf("********** SCOAD01 - 03 OK **********\n")         ;
  else
    printf("********** SCOAD01 - 03 NG **********\n")         ;

  tld = ld*2.0l                                                   ;
  if (tld>9.9l && tld<10.1l)
    printf("********** SCOAD01 - 04 OK **********\n")         ;
  else
    printf("********** SCOAD01 - 04 NG **********\n")         ;


  ti = 2.0f*i                                                     ;
  if (ti == 10)
    printf("********** SCOAD01 - 05 OK **********\n")         ;
  else
    printf("********** SCOAD01 - 05 NG **********\n")         ;

  tf = 2.0f*f                                                     ;
  if (tf>9.9f && tf<10.1f)
    printf("********** SCOAD01 - 06 OK **********\n")         ;
  else
    printf("********** SCOAD01 - 06 NG **********\n")         ;

  td = 2.0*d                                                      ;
  if (td>9.9 && td<10.1)
    printf("********** SCOAD01 - 07 OK **********\n")         ;
  else
    printf("********** SCOAD01 - 07 NG **********\n")         ;

  tld = 2.0l*ld                                                   ;
  if (tld>9.9l && tld<10.1l)
    printf("********** SCOAD01 - 08 OK **********\n")         ;
  else
    printf("********** SCOAD01 - 08 NG **********\n")         ;


  printf("********** SCOAD01 TEST ENDED **********\n")        ;

exit (0);
}
