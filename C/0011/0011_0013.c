#include  <stdio.h>

int main()
{
  int           i   = 5                                           ;
  int           ti                                                ;
  float         f   = 5.0f                                        ;
  float         tf                                                ;
  double        d   = 5.0                                         ;
  double        td                                                ;
#ifdef NO_LONG_DOUBLE
  double ld  = 5.0l                                        ;
  double tld                                               ;
#else
  long   double ld  = 5.0l                                        ;
  long   double tld                                               ;
#endif

  printf("********** TEST STARTED **********\n")      ;

  ti = i*2.0f                                                     ;
  if (ti == 10)
    printf("********** 01 OK **********\n")         ;
  else
    printf("********** 01 NG **********\n")         ;

  tf = f*2.0f                                                     ;
  if (tf>9.9f && tf<10.1f)
    printf("********** 02 OK **********\n")         ;
  else
    printf("********** 02 NG **********\n")         ;

  td = d*2.0                                                      ;
  if (td>9.9 && td<10.1)
    printf("********** 03 OK **********\n")         ;
  else
    printf("********** 03 NG **********\n")         ;

  tld = ld*2.0l                                                   ;
  if (tld>9.9l && tld<10.1l)
    printf("********** 04 OK **********\n")         ;
  else
    printf("********** 04 NG **********\n")         ;


  ti = 2.0f*i                                                     ;
  if (ti == 10)
    printf("********** 05 OK **********\n")         ;
  else
    printf("********** 05 NG **********\n")         ;

  tf = 2.0f*f                                                     ;
  if (tf>9.9f && tf<10.1f)
    printf("********** 06 OK **********\n")         ;
  else
    printf("********** 06 NG **********\n")         ;

  td = 2.0*d                                                      ;
  if (td>9.9 && td<10.1)
    printf("********** 07 OK **********\n")         ;
  else
    printf("********** 07 NG **********\n")         ;

  tld = 2.0l*ld                                                   ;
  if (tld>9.9l && tld<10.1l)
    printf("********** 08 OK **********\n")         ;
  else
    printf("********** 08 NG **********\n")         ;


  printf("********** TEST ENDED **********\n")        ;

}
