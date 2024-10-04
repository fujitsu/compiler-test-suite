#include<stdio.h>
int main()
{
  signed char            a = 0  ;
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

  a = (signed char)c;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0  ;

  a = (signed char)sc;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0  ;

  a = (signed char)usc;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0  ;

  a = (signed char)shi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0  ;

  a = (signed char)sshi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0  ;

  a = (signed char)usshi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0  ;

  a = (signed char)i;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0  ;

  a = (signed char)si;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0  ;

  a = (signed char)usi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0  ;

  a = (signed char)li;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0  ;

  a = (signed char)sli;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0  ;

  a = (signed char)usli;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0  ;

  a = (signed char)p;
  i = (int)p;
  if ( (a&0x000000ff)==(i&0x000000ff) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0  ;

  a = (signed char)etag;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0  ;

  a = (signed char)ci;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0  ;

  a = (signed char)vi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0  ;

}
