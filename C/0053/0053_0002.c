#include<stdio.h>
int main()
{
  void                   func();
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
  int                   *p;
  struct stag {
                 int s1;
                 int s2;
              } stag;
  union utag  {
                 struct { char c1;
                           char c2; } ust;
                 short int shi1;
              } utag;
  enum etag   { e1, e2, e3, e4 } etag;
  const int              ci = 1;
  volatile int           vi;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  printf("TEST01 --> OK \n");

  ( void ) c;
  printf("TEST02 --> OK \n");

  ( void ) sc;
  printf("TEST03 --> OK \n");

  ( void ) usc;
  printf("TEST04 --> OK \n");

  ( void ) shi;
  printf("TEST05 --> OK \n");

  ( void ) sshi;
  printf("TEST06 --> OK \n");

  ( void ) usshi;
  printf("TEST07 --> OK \n");

  ( void ) i;
  printf("TEST08 --> OK \n");

  ( void ) si;
  printf("TEST09 --> OK \n");

  ( void ) usi;
  printf("TEST10 --> OK \n");

  ( void ) li;
  printf("TEST11 --> OK \n");

  ( void ) sli;
  printf("TEST12 --> OK \n");

  ( void ) usli;
  printf("TEST13 --> OK \n");

  ( void ) p;
  printf("TEST14 --> OK \n");

  ( void ) stag;
  printf("TEST15 --> OK \n");

  ( void ) utag;
  printf("TEST16 --> OK \n");

  ( void ) etag;
  printf("TEST17 --> OK \n");

  ( void ) ci;
  printf("TEST18 --> OK \n");

  ( void ) vi;
  printf("TEST19 --> OK \n");

}

void func()
{
}
