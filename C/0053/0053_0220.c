#include<stdio.h>
int main()
{
  unsigned int           a = 1;
  signed int             b = 1;
  int                    e = 1;
  unsigned int           usi = 1;
  signed int             si  = 1;
  int                    i   = 1;
  unsigned short int     usshi = 1;
  signed short int       sshi  = 1;
  short int              shi   = 1;
  unsigned char          usc = 'a';
  signed char            sc  = 'a';
  char                   c   = 'a';

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM  \n");
  printf("*                            *\n");
  printf("******************************\n");

#if INT64
  if ( sizeof ( a + usi ) == 8 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( sizeof ( a + si ) == 8 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( sizeof ( a + i ) == 8 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( sizeof ( a + usshi ) == 8 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( sizeof ( a + sshi ) == 8 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( sizeof ( a + shi ) == 8 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( sizeof ( a + usc ) == 8 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( sizeof ( a + sc ) == 8 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( sizeof ( a + c ) == 8 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( sizeof ( b + si ) == 8 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( sizeof ( b + i ) == 8 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( sizeof ( b + usshi ) == 8 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( sizeof ( b + sshi ) == 8 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( sizeof ( b + shi ) == 8 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( sizeof ( b + usc ) == 8 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

  if ( sizeof ( b + sc ) == 8 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");

  if ( sizeof ( b + c ) == 8 )
    printf("TEST17 --> OK \n");
  else
    printf("TEST17 --> NG \n");

  if ( sizeof ( e + i ) == 8 )
    printf("TEST18 --> OK \n");
  else
    printf("TEST18 --> NG \n");

  if ( sizeof ( e + usshi ) == 8 )
    printf("TEST19 --> OK \n");
  else
    printf("TEST19 --> NG \n");

  if ( sizeof ( e + sshi ) == 8 )
    printf("TEST20 --> OK \n");
  else
    printf("TEST20 --> NG \n");

  if ( sizeof ( e + shi ) == 8 )
    printf("TEST21 --> OK \n");
  else
    printf("TEST21 --> NG \n");

  if ( sizeof ( e + usc ) == 8 )
    printf("TEST22 --> OK \n");
  else
    printf("TEST22 --> NG \n");

  if ( sizeof ( e + sc ) == 8 )
    printf("TEST23 --> OK \n");
  else
    printf("TEST23 --> NG \n");

  if ( sizeof ( e + c ) == 8 )
    printf("TEST24 --> OK \n");
  else
    printf("TEST24 --> NG \n");

#else

  if ( sizeof ( a + usi ) == 4 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( sizeof ( a + si ) == 4 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( sizeof ( a + i ) == 4 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( sizeof ( a + usshi ) == 4 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( sizeof ( a + sshi ) == 4 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( sizeof ( a + shi ) == 4 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( sizeof ( a + usc ) == 4 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( sizeof ( a + sc ) == 4 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( sizeof ( a + c ) == 4 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( sizeof ( b + si ) == 4 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( sizeof ( b + i ) == 4 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( sizeof ( b + usshi ) == 4 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( sizeof ( b + sshi ) == 4 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( sizeof ( b + shi ) == 4 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( sizeof ( b + usc ) == 4 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

  if ( sizeof ( b + sc ) == 4 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");

  if ( sizeof ( b + c ) == 4 )
    printf("TEST17 --> OK \n");
  else
    printf("TEST17 --> NG \n");

  if ( sizeof ( e + i ) == 4 )
    printf("TEST18 --> OK \n");
  else
    printf("TEST18 --> NG \n");

  if ( sizeof ( e + usshi ) == 4 )
    printf("TEST19 --> OK \n");
  else
    printf("TEST19 --> NG \n");

  if ( sizeof ( e + sshi ) == 4 )
    printf("TEST20 --> OK \n");
  else
    printf("TEST20 --> NG \n");

  if ( sizeof ( e + shi ) == 4 )
    printf("TEST21 --> OK \n");
  else
    printf("TEST21 --> NG \n");

  if ( sizeof ( e + usc ) == 4 )
    printf("TEST22 --> OK \n");
  else
    printf("TEST22 --> NG \n");

  if ( sizeof ( e + sc ) == 4 )
    printf("TEST23 --> OK \n");
  else
    printf("TEST23 --> NG \n");

  if ( sizeof ( e + c ) == 4 )
    printf("TEST24 --> OK \n");
  else
    printf("TEST24 --> NG \n");

#endif

}
