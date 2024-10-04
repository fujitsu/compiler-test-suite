#include<stdio.h>
int main()
{
  int a,i;
  struct stag {
                int t1;
                int t2;
              } stag;

  union utag {
               struct { char c1;
                         char c2; } ust;
               short int si;
             } utag;

  enum etag { e1, e2, e3, e4 } etag;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  a = 0;
  if ( a==0 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  a = sizeof ( char );
  if ( a==1 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  a = sizeof ( int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  a = sizeof ( short int );
  if ( a==2 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  a = sizeof ( long int );
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  a = sizeof ( signed int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  a = sizeof ( unsigned int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  a = sizeof ( const int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  a = sizeof ( volatile int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  a = sizeof ( struct stag );
#if INT64
  if ( a==16 )
#else
  if ( a==8 )
#endif
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  a = sizeof ( union utag );
  if ( a==2 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  a = sizeof ( enum etag );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  a = sizeof ( i );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

}
