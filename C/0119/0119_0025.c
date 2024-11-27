#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <string.h>
int main()
{
  struct tag_s {
                 int         mi1                     ;
                 const int   mci                     ;
               } s,*ps                              ;
  int        i1,*pi                                  ;
  int        i2[10]  ={0,1,2,3,4,5,6,7,8,9}      ;
  const int  ci1 = 7 ,*pci                           ;
  const int  ci2[10] ={0,1,2,3,4,5,6,7,8,9}      ;

  printf("********** SCOHD01 TEST STARTED **********\n")    ;

  s.mi1 = 7    ;
  i1    = 7    ;
  ps    = &s   ;

  if ( *(char *)memchr("abcdefghjk",'g',7) == 'g' )
    printf("********** SCOHD01 -01 OK **********\n")        ;
  else
    printf("********** SCOHD01 -01 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ps->mi1) == 'g' )
    printf("********** SCOHD01 -02 OK **********\n")        ;
  else
    printf("********** SCOHD01 -02 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',i1) == 'g' )
    printf("********** SCOHD01 -04 OK **********\n")        ;
  else
    printf("********** SCOHD01 -04 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',i2[7]) == 'g' )
    printf("********** SCOHD01 -05 OK **********\n")        ;
  else
    printf("********** SCOHD01 -05 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ci1) == 'g' )
    printf("********** SCOHD01 -06 OK **********\n")        ;
  else
    printf("********** SCOHD01 -06 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ci2[7]) == 'g' )
    printf("********** SCOHD01 -07 OK **********\n")        ;
  else
    printf("********** SCOHD01 -07 NG **********\n")        ;

  pi = &i1;
  if ( *(char *)memchr("abcdefghjk",'g',*pi) == 'g' )
    printf("********** SCOHD01 -08 OK **********\n")        ;
  else
    printf("********** SCOHD01 -08 NG **********\n")        ;

  pi = &i2[7] ;
  if ( *(char *)memchr("abcdefghjk",'g',*pi) == 'g' )
    printf("********** SCOHD01 -09 OK **********\n")        ;
  else
    printf("********** SCOHD01 -09 NG **********\n")        ;

  pci = &ci1;
  if ( *(char *)memchr("abcdefghjk",'g',*pci) == 'g' )
    printf("********** SCOHD01 -10 OK **********\n")        ;
  else
    printf("********** SCOHD01 -10 NG **********\n")        ;

  pci = &ci2[7];
  if ( *(char *)memchr("abcdefghjk",'g',*pci) == 'g' )
    printf("********** SCOHD01 -11 OK **********\n")        ;
  else
    printf("********** SCOHD01 -11 NG **********\n")        ;


  printf("********** SCOHD01 TEST ENDED **********\n")    ;

exit (0);
}
