#include<stdio.h>
int main()
{
  unsigned char          a = 0  ;
  char                   c   = 0x81;
  signed char            sc  = 0x81;
  unsigned char          usc = 0x81;
  short int              shi   = 129;
  signed short int       sshi  = 129;
  unsigned short int     usshi = 129;
  int                    i   = 129;
  signed int             si  = 129;
  unsigned int           usi = 129;
  long int               li   = 129;
  signed long int        sli  = 129;
  unsigned long int      usli = 129;
  int                   *p;
  enum etag { e1, e2, e3, e4 } etag;
  const int              ci = 129;
  volatile int           vi = 129;

  p = &i;
  etag = 129;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  a = ( unsigned char ) c;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) sc;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) usc;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) shi;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) sshi;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) usshi;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) i;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) si;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) usi;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) li;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) sli;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) usli;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) p;
  i = ( int ) p;
  if ( (a&0x000000ff)==(i&0x000000ff) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) etag;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) ci;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) vi;
#ifndef S_CHAR
  if ( a==129 )
#else
  if ( (a&0x000000ff)==0x00000081 )
#endif
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0  ;

}
