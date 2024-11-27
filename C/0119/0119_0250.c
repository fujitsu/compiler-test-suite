#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct tag_s {
             int       mi ;
             char      mc ;
             short int msi ;
             }  ;
union  tag_u {
             int       mi ;
             char      mc ;
             short int msi ;
             }  ;
enum   tag_e {e_a, e_b, e_c, e_d} ;
int func6 (void *pv, int *pi);
int func5 (struct tag_s v_struct, union tag_u v_union, enum tag_e v_enum);
int func4 (float f, double d, long double ld);
int main (void)
{
  char                   c     ;
  short int              si    ;
  int                    i     ;
  long int               li    ;
  long long int          lli   ;
  unsigned char          uc    ;
  unsigned short int     usi   ;
  unsigned int           ui    ;
  unsigned long int      uli   ;
  unsigned long long int ulli  ;
  signed char            s_c   ;
  signed short int       s_si  ;
  signed int             s_i   ;
  signed long int        s_li  ;
  signed long long int   s_lli ;
  float                  f     ;
  double                 d     ;
  long double            ld    ;
  struct tag_s           v_struct ;
  union  tag_u           v_union  ;
  enum   tag_e           v_enum   ;
  void                  *pv       ;
  int                   *pi       ;

  int func1(char c,
            short int  si,
            int i,
            long int li,
            long long int lli) ;
  int func2(unsigned char uc,
            unsigned short int usi,
            unsigned int ui,
            unsigned long int uli,
            unsigned long long int ulli) ;
  int func3(signed char s_c,
            signed short int s_si,
            signed int s_i,
            signed long int s_li,
            signed long long int s_lli) ;

  c   = 'a'          ;
  si  = 1            ;
  i   = 1            ;
  li  = 1            ;
  lli = 1            ;
  uc   = 'a'         ;
  usi  = 1           ;
  ui   = 1           ;
  uli  = 1           ;
  ulli = 1           ;
  s_c   = '/'        ;
  s_si  = 1          ;
  s_i   = 1          ;
  s_li  = 1          ;
  s_lli = 1          ;
  f    = 1.0         ;
  d    = 1.0         ;
  ld   = 1.0         ;
  v_struct.mi  = 1   ;
  v_struct.mc  = 'a' ;
  v_struct.msi = 1   ;
  v_union.mi   = 1   ;
  v_enum       = e_a ;
  pv           = &c  ;
  pi           = &i  ;

  printf("********** EVT01B TEST START **********\n");

  func1( c,si,i,li,lli ) ;
  func2( uc,usi,ui,uli,ulli ) ;
  func3( s_c,s_si,s_i,s_li,s_lli ) ;
  func4(f,d,ld) ;
  func5(v_struct,v_union,v_enum);
  func6(pv,pi);
  if (c != 'b')
      printf("***** EVT01B - 26 ***** N   G *****\n");
  if (i != 2  )
      printf("***** EVT01B - 27 ***** N   G *****\n");

  printf("********** EVT01B TEST  END  **********\n");

exit (0);
}

int func1(
      char c,
      short int si,
      int i,
      long int li,
      long long int lli)
{
  int  flag = 0 ;

  if (c != 'a')
      {
      flag = 1 ;
      printf("***** EVT01B - 01 ***** N   G *****\n");
      }
  if (si != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 02 ***** N   G *****\n");
      }
  if (i != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 03 ***** N   G *****\n");
      }
  if (li != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 04 ***** N   G *****\n");
      }
  if (lli != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 05 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** EVT01B - FUNC1 ** O   K *****\n");
}

int func2(
      unsigned char uc,
      unsigned short int usi,
      unsigned int ui,
      unsigned long int uli,
      unsigned long long int ulli)
{
  int  flag = 0 ;

  if (uc != 'a')
      {
      flag = 1 ;
      printf("***** EVT01B - 06 ***** N   G *****\n");
      }
  if (usi != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 07 ***** N   G *****\n");
      }
  if (ui != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 08 ***** N   G *****\n");
      }
  if (uli != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 09 ***** N   G *****\n");
      }
  if (ulli != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 10 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** EVT01B - FUNC2 ** O   K *****\n");
}

int func3(
      signed char sc,
      signed short int ssi,
      signed int si,
      signed long int sli,
      signed long long int slli)
{
  int  flag = 0 ;

  if (sc != '/')
      {
      flag = 1 ;
      printf("***** EVT01B - 11 ***** N   G *****\n");
      }
  if (ssi != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 12 ***** N   G *****\n");
      }
  if (si != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 13 ***** N   G *****\n");
      }
  if (sli != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 14 ***** N   G *****\n");
      }
  if (slli != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 15 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** EVT01B - FUNC3 ** O   K *****\n");
}

int func4 (float f, double d, long double ld)
{
  int  flag = 0 ;

  if (f != 1.0)
      {
      flag = 1 ;
      printf("***** EVT01B - 16 ***** N   G *****\n");
      }
  if (d != 1.0)
      {
      flag = 1 ;
      printf("***** EVT01B - 17 ***** N   G *****\n");
      }
  if (ld != 1.0)
      {
      flag = 1 ;
      printf("***** EVT01B - 18 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** EVT01B - FUNC4 ** O   K *****\n");
}

int func5 (struct tag_s v_struct, union tag_u v_union, enum tag_e v_enum)
{
  int  flag = 0 ;

  if (v_struct.mi  != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 19 ***** N   G *****\n");
      }
  if (v_struct.mc  != 'a')
      {
      flag = 1 ;
      printf("***** EVT01B - 20 ***** N   G *****\n");
      }
  if (v_struct.msi != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 21 ***** N   G *****\n");
      }
  if (v_union.mi   != 1)
      {
      flag = 1 ;
      printf("***** EVT01B - 22 ***** N   G *****\n");
      }
  if (v_enum       != e_a)
      {
      flag = 1 ;
      printf("***** EVT01B - 23 ***** N   G *****\n");
      }
  if (flag == 0)
      printf("***** EVT01B - FUNC5 ** O   K *****\n");
}

int func6 (void *pv, int *pi)
{
  int  flag = 0 ;

  if (*((char *)pv) != 'a')
      {
      flag = 1 ;
      printf("***** EVT01B - 24 ***** N   G *****\n");
      }
  if (*pi != 1 )
      {
      flag = 1 ;
      printf("***** EVT01B - 25 ***** N   G *****\n");
      }
  *((char *)pv) = 'b' ;
  *pi = 2 ;
  if (flag == 0)
      printf("***** EVT01B - FUNC6 ** O   K *****\n");
}
