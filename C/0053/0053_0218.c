#include<stdio.h>
int main()
{
  signed long int        a = 1;
  signed long int        sli  = 1;
  long int               li   = 1;
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

#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if ( sizeof ( a + sli ) == 8 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( sizeof ( a + li ) == 8 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( sizeof ( a + usi ) == 8 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( sizeof ( a + si ) == 8 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( sizeof ( a + i ) == 8 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( sizeof ( a + usshi ) == 8 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( sizeof ( a + sshi ) == 8 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( sizeof ( a + shi ) == 8 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( sizeof ( a + usc ) == 8 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( sizeof ( a + sc ) == 8 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( sizeof ( a + c ) == 8 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

#else
  if ( sizeof ( a + sli ) == 4 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( sizeof ( a + li ) == 4 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( sizeof ( a + usi ) == 4 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( sizeof ( a + si ) == 4 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( sizeof ( a + i ) == 4 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( sizeof ( a + usshi ) == 4 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( sizeof ( a + sshi ) == 4 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( sizeof ( a + shi ) == 4 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( sizeof ( a + usc ) == 4 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( sizeof ( a + sc ) == 4 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( sizeof ( a + c ) == 4 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

#endif
}
