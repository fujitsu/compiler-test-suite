#include <stdio.h>

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

char                   f_c()     ;
short int              f_si()    ;
int                    f_i()     ;
long int               f_li()    ;
long long int          f_lli()   ;
unsigned char          f_uc()    ;
unsigned short int     f_usi()   ;
unsigned int           f_ui()    ;
unsigned long int      f_uli()   ;
unsigned long long int f_ulli()  ;
signed char            f_s_c()   ;
signed short int       f_s_si()  ;
signed int             f_s_i()   ;
signed long int        f_s_li()  ;
signed long long int   f_s_lli() ;
float                  f_f()     ;
double                 f_d()     ;
long double            f_ld()    ;
struct tag_s           f_struct() ;
union  tag_u           f_union()  ;
enum   tag_e           f_enum()   ;
char                  *f_pc(char *c_p)   ;
void                   f_void()  ;
static int             f_st_i()  ;
extern int             f_e_i()   ;

int  flag ;
int main()
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
  char                  *pc       ;
  char                  *c_s="abcdefghijklmnopqrstu" ;
  extern int             f_e_i() ;
  int                    i_e,i_s ;

  flag = 0 ;

  printf("********** TEST START **********\n");

  c     = f_c()     ;
  si    = f_si()    ;
  i     = f_i()     ;
  li    = f_li()    ;
  lli   = f_lli()   ;
  uc    = f_uc()    ;
  usi   = f_usi()   ;
  ui    = f_ui()    ;
  uli   = f_uli()   ;
  ulli  = f_ulli()  ;
  s_c   = f_s_c()   ;
  s_si  = f_s_si()  ;
  s_i   = f_s_i()   ;
  s_li  = f_s_li()  ;
  s_lli = f_s_lli() ;
  f     = f_f()     ;
  d     = f_d()     ;
  ld    = f_ld()    ;
  v_struct = f_struct() ;
  v_union  = f_union()  ;
  v_enum   = f_enum()   ;
  pc       = f_pc(c_s)  ;
  i_s      = f_st_i() ;
  i_e      = f_e_i() ;

  if (c != 'a')
      {
      flag = 1 ;
      printf("***** 01 ***** N   G *****\n");
      }
  if (si != 1)
      {
      flag = 1 ;
      printf("***** 02 ***** N   G *****\n");
      }
  if (i != 1)
      {
      flag = 1 ;
      printf("***** 03 ***** N   G *****\n");
      }
  if (li != 1)
      {
      flag = 1 ;
      printf("***** 04 ***** N   G *****\n");
      }
  if (lli != 1)
      {
      flag = 1 ;
      printf("***** 05 ***** N   G *****\n");
      }
  if (uc != 'a')
      {
      flag = 1 ;
      printf("***** 06 ***** N   G *****\n");
      }
  if (usi != 1)
      {
      flag = 1 ;
      printf("***** 07 ***** N   G *****\n");
      }
  if (ui != 1)
      {
      flag = 1 ;
      printf("***** 08 ***** N   G *****\n");
      }
  if (uli != 1)
      {
      flag = 1 ;
      printf("***** 09 ***** N   G *****\n");
      }
  if (ulli != 1)
      {
      flag = 1 ;
      printf("***** 10 ***** N   G *****\n");
      }
  if (s_c != 0x7f)
      {
      flag = 1 ;
      printf("***** 11 ***** N   G *****\n");
      }
  if (s_si != 1)
      {
      flag = 1 ;
      printf("***** 12 ***** N   G *****\n");
      }
  if (s_i != 1)
      {
      flag = 1 ;
      printf("***** 13 ***** N   G *****\n");
      }
  if (s_li != 1)
      {
      flag = 1 ;
      printf("***** 14 ***** N   G *****\n");
      }
  if (s_lli != 1)
      {
      flag = 1 ;
      printf("***** 15 ***** N   G *****\n");
      }
  if (f != 1.0)
      {
      flag = 1 ;
      printf("***** 16 ***** N   G *****\n");
      }
  if (d != 1.0)
      {
      flag = 1 ;
      printf("***** 17 ***** N   G *****\n");
      }
  if (ld != 1.0)
      {
      flag = 1 ;
      printf("***** 18 ***** N   G *****\n");
      }
  if (v_struct.mi != 1 || v_struct.mc != 'a' || v_struct.msi != 1)
      {
      flag = 1 ;
      printf("***** 19 ***** N   G *****\n");
      }
  if (v_union.mi != 1)
      {
      flag = 1 ;
      printf("***** 20 ***** N   G *****\n");
      }
  if (v_enum != e_b)
      {
      flag = 1 ;
      printf("***** 21 ***** N   G *****\n");
      }
  if (*pc != 'c')
      {
      flag = 1 ;
      printf("***** 22 ***** N   G *****\n");
      }

  f_void() ;

  printf("********** TEST END **********\n");


}

char f_c() { return 'a' ; }
short int f_si() { return 1 ; }
int f_i() { return 1 ; }
long int f_li() { return 1 ; }
long long int f_lli() { return 1 ; }

unsigned char f_uc() { return 'a' ; }
unsigned short int f_usi() { return 1 ; }
unsigned int f_ui() { return 1 ; }
unsigned long int f_uli() { return 1 ; }
unsigned long long int f_ulli() { return 1 ; }

signed char f_s_c() { return 0x7f ; }
signed short int f_s_si() { return 1 ; }
signed int f_s_i() { return 1 ; }
signed long int f_s_li() { return 1 ; }
signed long long int f_s_lli() { return 1 ; }

float f_f() { return 1.0 ; }
double f_d() { return 1.0 ; }
long double f_ld() { return 1.0 ; }

struct tag_s f_struct()
{
  struct tag_s w ;
  w.mi  = 1   ;
  w.mc  = 'a' ;
  w.msi = 1   ;
  return w ;
}

union  tag_u f_union()
{
  union tag_u w ;
  w.mi = 1 ;
  return w ;
}

enum   tag_e f_enum()
{
  enum tag_e w ;
  w = e_b ;
  return w ;
}

char *f_pc(char *c_p)
{
  return c_p+2 ;
}

void  f_void()
{
  if (flag == 0)
      printf("***** O   K *****\n");
}

static int f_st_i() { return 1 ; }
int f_e_i() { return 1 ; }
