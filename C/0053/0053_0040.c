#include<stdio.h>
int main()
{
  void        *v;
  char         c;
  int          i,a;
  struct stag {
                int t1;
                int t2;
              } *stag;

  union utag {
               struct { char c1;
                         char c2; } ust;
               short int si;
             } *utag;

  enum etag { e1, e2, e3, e4 } etag;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  i = 241;
  c = 0xf1;

  a = 1 ;
  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

#if INT64
  ( char )i == 0xfffffffffffffff1 ? (a=1) : (a=0);
#else
  ( char )i == 0xfffffff1 ? (a=1) : (a=0);
#endif
  if ( a==1 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

#if INT64 || LONG64  || __x86_64__ || __aarch64__
  ( int )c == 18446744073709551601 ? (a=1) : (a=0);
#else
  ( int )c == 4294967281 ? (a=1) : (a=0);
#endif
  if ( a==1 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  ( short int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  ( long int )i == 241 ? (a=1) : (a=0);
  if ( a==1)
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  ( signed int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  ( unsigned int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  ( const int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  ( volatile int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  a = 1;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  a = 1;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  ( enum etag )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  ( i - 241 ) *2 ? (a=1) : (a=0);
  if ( a==0 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

}
