#include<stdio.h>
int main()
{
  enum tag { e1, e2=10, e3, e4 } etag;

  int   a = 1;
  int   b = e3;
  char  c = 'a';
  int   d = sizeof a;
  int  *p = &a;
  int  *f = p;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( b==11 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( c=='a' )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

#if INT64
  if ( d==8 )
#else
  if ( d==4 )
#endif
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( f==&a )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

}
