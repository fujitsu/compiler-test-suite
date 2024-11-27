#include <stdlib.h>
#include <string.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  char   *c = "abcdef ghijk lmno."                              ;
  const  int    ineg = 0 , is = sizeof(*c) , il = 257           ;
  char   *cs ,*ct      ;

  printf("********** SCOHD02 TEST STARTED **********\n")    ;

  c = "Die Katze laesst das Mausen nicht."                      ;
  c = "Reist eine Katze fort/nach Frankreich, "                 ;
  c = "so kommt ein Maeusefaenger wieder [heim]."               ;
  c = "Wie die Katze um den heissen Brei herumgehen."           ;
  c = "der Katze die Schelle umhaengen."                        ;
  c = "die Katze im Sack kaufen."                               ;
  c = "die Katze aus dem Sack lassen."                          ;
  c = "wie Hund u. Katze zusammenleben."                        ;
  c = "mit jm. Katze u. Maus spielen."                          ;
  c = "katzen dreck."                                           ;
  c = "katzen freundlich."                                      ;
  c = "katzen liebe."                                           ;
  c = "Katzen musik."                                           ;
  c = "Katzen waesche."                                         ;
  c = "Das ist fuer Katze."                                     ;
  cs = ct = c                                                   ;


  if ( memcmp(cs,ct,ineg) )
    printf("********** SCOHD02 -01 OK **********\n")        ;
  else
    printf("********** SCOHD02 -01 OK **********\n")        ;


  if ( memcmp(cs,ct,is) )
    printf("********** SCOHD02 -02 OK **********\n")        ;
  else
    printf("********** SCOHD02 -02 OK **********\n")        ;


  if ( memcmp(cs,ct,il) )
    printf("********** SCOHD02 -03 OK **********\n")        ;
  else
    printf("********** SCOHD02 -03 OK **********\n")        ;


  if ( memcmp(cs,ct,0) )
    printf("********** SCOHD02 -04 OK **********\n")        ;
  else
    printf("********** SCOHD02 -04 OK **********\n")        ;

  if ( memcmp(cs,ct,1) )
    printf("********** SCOHD02 -05 OK **********\n")        ;
  else
    printf("********** SCOHD02 -05 OK **********\n")        ;


  if ( memcmp(cs,ct,256) )
    printf("********** SCOHD02 -06 OK **********\n")        ;
  else
    printf("********** SCOHD02 -06 OK **********\n")        ;

  if ( memcmp(cs,ct,257) )
    printf("********** SCOHD02 -07 OK **********\n")        ;
  else
    printf("********** SCOHD02 -07 OK **********\n")        ;


  printf("********** SCOHD02 TEST ENDED **********\n")      ;

exit (0);
}
