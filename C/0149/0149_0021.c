#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  unsigned short int     s1 = 1;
  signed short int       s2 = 1;
  short int              s3 = 1;
  unsigned char          c1 = 'b';
  signed char            c2 = 'b';
  char                   c3 = 'b';
  unsigned short int     usshi = 1;
  signed short int       sshi  = 1;
  short int              shi   = 1;
  unsigned char          usc = 'a';
  signed char            sc  = 'a';
  char                   c   = 'a';
 
  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM  CATEGORY   *\n");
  printf("*                            *\n");
  printf("******************************\n");
 
  if ( sizeof ( s1 + usshi ) == 4 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
 
  if ( sizeof ( s1 + sshi ) == 4 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
 
  if ( sizeof ( s1 + shi ) == 4 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
 
  if ( sizeof ( s1 + usc ) == 4 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
 
  if ( sizeof ( s1 + sc ) == 4 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
 
  if ( sizeof ( s1 + c ) == 4 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
 
  if ( sizeof ( s2 + sshi ) == 4 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
 
  if ( sizeof ( s2 + shi ) == 4 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
 
  if ( sizeof ( s2 + usc ) == 4 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
 
  if ( sizeof ( s2 + sc ) == 4 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
 
  if ( sizeof ( s2 + c ) == 4 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
 
  if ( sizeof ( s3 + shi ) == 4 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
 
  if ( sizeof ( s3 + usc ) == 4 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
 
  if ( sizeof ( s3 + sc ) == 4 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
 
  if ( sizeof ( s3 + c ) == 4 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
 
  if ( sizeof ( c1 + usc ) == 4 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
 
  if ( sizeof ( c1 + sc ) == 4 )
    printf("TEST17 --> OK \n");
  else
    printf("TEST17 --> NG \n");
 
  if ( sizeof ( c1 + c ) == 4 )
    printf("TEST18 --> OK \n");
  else
    printf("TEST18 --> NG \n");
 
  if ( sizeof ( c2 + sc ) == 4 )
    printf("TEST19 --> OK \n");
  else
    printf("TEST19 --> NG \n");
 
  if ( sizeof ( c2 + c ) == 4 )
    printf("TEST20 --> OK \n");
  else
    printf("TEST20 --> NG \n");
 
  if ( sizeof ( c3 + c ) == 4 )
    printf("TEST21 --> OK \n");
  else
    printf("TEST21 --> NG \n");
 
exit (0);
}
