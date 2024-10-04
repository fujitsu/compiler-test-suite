#include<stdio.h>
int main()
{
  int                    a;
  char                   c;
  signed char            sc;
  unsigned char          usc;
  short int              shi;
  signed short int       sshi;
  unsigned short int     usshi;
  int                    i;
  signed int             si;
  unsigned int           usi;
  long int               li;
  signed long int        sli;
  unsigned long int      usli;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM  \n");
  printf("*                            *\n");
  printf("******************************\n");

  a = sizeof sc;
  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  a = sizeof sshi;
  if ( a==2 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  a = sizeof si;
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  a = sizeof sli;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  a = sizeof c;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  a = sizeof shi;
  if ( a==2 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  a = sizeof i;
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  a = sizeof li;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  a = sizeof usc;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  a = sizeof usshi;
  if ( a==2 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  a = sizeof usi;
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  a = sizeof usli;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

}
