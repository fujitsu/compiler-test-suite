#include<stdio.h>
int main()
{
  void        *v;
  char         c;
  int          i,a;
  short int    shi;
  long int     li;
  signed int   si;
  unsigned int usi;
  struct stag {
                int t1;
                int t2;
              } ;

  union utag {
               struct { char c1;
                         char c2; } ust;
               short int si;
             } ;

  enum etag { e1, e2, e3, e4 } etag;

  struct stag *stag;
  union utag *utag;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  i = 241;

  a = 1;
  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  c = ( char )i;
  if ( (c&0x000000ff)==0x000000f1 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  i = ( int )c;
  if ( i==(-15) )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  shi = ( short int )i;
  if ( shi==(-15) )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  li = ( long int )i;
  if ( li==(-15) )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  si = ( signed int )i;
  if ( si==(-15) )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  usi = ( unsigned int )i;
#if INT64
  if ( usi==18446744073709551601 )
#else
  if ( usi==4294967281 )
#endif
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  a = ( const int )i;
  if ( a==(-15) )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  a = ( volatile int )i;
  if ( a==(-15) )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  stag = ( struct stag * )i;
  if ( stag==(struct stag *)-15)
    printf("TEST10 --> OK \n");
  else {
    printf("TEST10 --> NG \n");
    printf("NG I=%d \n",i);
    printf("NG STAG=%d \n",stag);
    }

  utag = ( union utag *)i;
  if ( utag==(union utag *)-15)
    printf("TEST11 --> OK \n");
  else {
    printf("TEST11 --> NG \n");
    printf("NG I=%d \n",i);
    printf("NG UTAG=%d \n",utag);
    }

  etag = ( enum etag )i;
  if ( etag==(-15) )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  a = 0 + ( i );
  if ( a==(-15) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

}
