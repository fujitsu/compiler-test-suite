#include<stdio.h>
int main()
{
  int b;
  int a[ 5 ];
  struct stag {
                 int       s1;
                 short int s2;
                 char      s3;
              } stag;
  union utag  {
                 int       u1;
                 short int u2;
                 char      u3;
              } utag;
  enum etag   { e1, e2, e3 } etag;
  int *p;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM  \n");
  printf("*                            *\n");
  printf("******************************\n");

  b = sizeof a;
#if INT64
  if ( b==40 )
#else
  if ( b==20 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  b = sizeof stag;
#if INT64
  if ( b==16 )
#else
  if ( b==8 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  b = sizeof utag;
#if INT64
  if ( b==8 )
#else
  if ( b==4 )
#endif
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  b = sizeof etag;
#if INT64
  if ( b==8 )
#else
  if ( b==4 )
#endif
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  b = sizeof p;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if ( b==8 )
#else
  if ( b==4 )
#endif
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

}
