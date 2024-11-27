#include <stdio.h>

#if (__STDC_VERSION__ + 0 >= 199900L) || defined(__GNUC__)
#define  ALIGNOF(x)  __alignof(x)
#elif defined(__SUNPRO_C)
#define  ALIGNOF(x)  sizeof(x)
#else
#define  ALIGNOF(x)  __builtin_alignof(x)
#endif


#define  ALIGNOF_PTR      ALIGNOF(void *)
#define  ALIGNOF_CHAR     ALIGNOF(char)
#define  ALIGNOF_INT      ALIGNOF(int)
#define  ALIGNOF_LONG     ALIGNOF(signed long long)
#define  ALIGNOF_FLOAT    ALIGNOF(float)
#define  ALIGNOF_DOUBLE   ALIGNOF(double)
#define  ALIGNOF_LONGDBL  ALIGNOF(long double)

struct TAG00 { void * t1; void * t2; } st00 ;
struct TAG01 { void * t1; char t2; } st01 ;
struct TAG02 { void * t1; int t2; } st02 ;
struct TAG03 { void * t1; long long t2; } st03 ;
struct TAG04 { void * t1; float t2; } st04 ;
struct TAG05 { void * t1; double t2; } st05 ;
struct TAG06 { void * t1; long double t2; } st06 ;
struct TAG10 { char t1; void * t2; } st10 ;
struct TAG11 { char t1; char t2; } st11 ;
struct TAG12 { char t1; int t2; } st12 ;
struct TAG13 { char t1; long long t2; } st13 ;
struct TAG14 { char t1; float t2; } st14 ;
struct TAG15 { char t1; double t2; } st15 ;
struct TAG16 { char t1; long double t2; } st16 ;
struct TAG20 { int t1; void * t2; } st20 ;
struct TAG21 { int t1; char t2; } st21 ;
struct TAG22 { int t1; int t2; } st22 ;
struct TAG23 { int t1; long long t2; } st23 ;
struct TAG24 { int t1; float t2; } st24 ;
struct TAG25 { int t1; double t2; } st25 ;
struct TAG26 { int t1; long double t2; } st26 ;
struct TAG30 { long long t1; void * t2; } st30 ;
struct TAG31 { long long t1; char t2; } st31 ;
struct TAG32 { long long t1; int t2; } st32 ;
struct TAG33 { long long t1; long long t2; } st33 ;
struct TAG34 { long long t1; float t2; } st34 ;
struct TAG35 { long long t1; double t2; } st35 ;
struct TAG36 { long long t1; long double t2; } st36 ;
struct TAG40 { float t1; void * t2; } st40 ;
struct TAG41 { float t1; char t2; } st41 ;
struct TAG42 { float t1; int t2; } st42 ;
struct TAG43 { float t1; long long t2; } st43 ;
struct TAG44 { float t1; float t2; } st44 ;
struct TAG45 { float t1; double t2; } st45 ;
struct TAG46 { float t1; long double t2; } st46 ;
struct TAG50 { double t1; void * t2; } st50 ;
struct TAG51 { double t1; char t2; } st51 ;
struct TAG52 { double t1; int t2; } st52 ;
struct TAG53 { double t1; long long t2; } st53 ;
struct TAG54 { double t1; float t2; } st54 ;
struct TAG55 { double t1; double t2; } st55 ;
struct TAG56 { double t1; long double t2; } st56 ;
struct TAG60 { long double t1; void * t2; } st60 ;
struct TAG61 { long double t1; char t2; } st61 ;
struct TAG62 { long double t1; int t2; } st62 ;
struct TAG63 { long double t1; long long t2; } st63 ;
struct TAG64 { long double t1; float t2; } st64 ;
struct TAG65 { long double t1; double t2; } st65 ;
struct TAG66 { long double t1; long double t2; } st66 ;
int main()
{
  if( ALIGNOF(struct TAG00) != ALIGNOF_PTR ) printf("NG st00 \n"); 
  if( ALIGNOF(struct TAG01) != ALIGNOF_PTR ) printf("NG st01 \n"); 
  if( ALIGNOF(struct TAG02) != ALIGNOF_PTR ) printf("NG st02 \n"); 
  if( ALIGNOF(struct TAG03) != ALIGNOF_LONG ) printf("NG st03 \n"); 
  if( ALIGNOF(struct TAG04) != ALIGNOF_PTR ) printf("NG st04 \n"); 
  if( ALIGNOF(struct TAG05) != ALIGNOF_DOUBLE ) printf("NG st05 \n"); 
  if( ALIGNOF(struct TAG06) != ALIGNOF_LONGDBL ) printf("NG st06 \n"); 
  if( ALIGNOF(struct TAG10) != ALIGNOF_PTR ) printf("NG st10 \n"); 
  if( ALIGNOF(struct TAG11) != ALIGNOF_CHAR ) printf("NG st11 \n"); 
  if( ALIGNOF(struct TAG12) != ALIGNOF_INT ) printf("NG st12 \n"); 
  if( ALIGNOF(struct TAG13) != ALIGNOF_LONG ) printf("NG st13 \n"); 
  if( ALIGNOF(struct TAG14) != ALIGNOF_FLOAT ) printf("NG st14 \n"); 
  if( ALIGNOF(struct TAG15) != ALIGNOF_DOUBLE ) printf("NG st15 \n"); 
  if( ALIGNOF(struct TAG16) != ALIGNOF_LONGDBL ) printf("NG st16 \n"); 
  if( ALIGNOF(struct TAG20) != ALIGNOF_PTR ) printf("NG st20 \n"); 
  if( ALIGNOF(struct TAG21) != ALIGNOF_INT ) printf("NG st21 \n"); 
  if( ALIGNOF(struct TAG22) != ALIGNOF_INT ) printf("NG st22 \n"); 
  if( ALIGNOF(struct TAG23) != ALIGNOF_LONG ) printf("NG st23 \n"); 
  if( ALIGNOF(struct TAG24) != ALIGNOF_FLOAT ) printf("NG st24 \n"); 
  if( ALIGNOF(struct TAG25) != ALIGNOF_DOUBLE ) printf("NG st25 \n"); 
  if( ALIGNOF(struct TAG26) != ALIGNOF_LONGDBL ) printf("NG st26 \n"); 
  if( ALIGNOF(struct TAG30) != ALIGNOF_LONG ) printf("NG st30 \n"); 
  if( ALIGNOF(struct TAG31) != ALIGNOF_LONG ) printf("NG st31 \n"); 
  if( ALIGNOF(struct TAG32) != ALIGNOF_LONG ) printf("NG st32 \n"); 
  if( ALIGNOF(struct TAG33) != ALIGNOF_LONG ) printf("NG st33 \n"); 
  if( ALIGNOF(struct TAG34) != ALIGNOF_LONG ) printf("NG st34 \n"); 
  if( ALIGNOF(struct TAG35) != ALIGNOF_DOUBLE ) printf("NG st35 \n"); 
  if( ALIGNOF(struct TAG36) != ALIGNOF_LONGDBL ) printf("NG st36 \n"); 
  if( ALIGNOF(struct TAG40) != ALIGNOF_PTR ) printf("NG st40 \n"); 
  if( ALIGNOF(struct TAG41) != ALIGNOF_FLOAT ) printf("NG st41 \n"); 
  if( ALIGNOF(struct TAG42) != ALIGNOF_INT ) printf("NG st42 \n"); 
  if( ALIGNOF(struct TAG43) != ALIGNOF_LONG ) printf("NG st43 \n"); 
  if( ALIGNOF(struct TAG44) != ALIGNOF_FLOAT ) printf("NG st44 \n"); 
  if( ALIGNOF(struct TAG45) != ALIGNOF_DOUBLE ) printf("NG st45 \n"); 
  if( ALIGNOF(struct TAG46) != ALIGNOF_LONGDBL ) printf("NG st46 \n"); 
  if( ALIGNOF(struct TAG50) != ALIGNOF_DOUBLE ) printf("NG st50 \n"); 
  if( ALIGNOF(struct TAG51) != ALIGNOF_DOUBLE ) printf("NG st51 \n"); 
  if( ALIGNOF(struct TAG52) != ALIGNOF_DOUBLE ) printf("NG st52 \n"); 
  if( ALIGNOF(struct TAG53) != ALIGNOF_LONG ) printf("NG st53 \n"); 
  if( ALIGNOF(struct TAG54) != ALIGNOF_DOUBLE ) printf("NG st54 \n"); 
  if( ALIGNOF(struct TAG55) != ALIGNOF_DOUBLE ) printf("NG st55 \n"); 
  if( ALIGNOF(struct TAG56) != ALIGNOF_LONGDBL ) printf("NG st56 \n"); 
  if( ALIGNOF(struct TAG60) != ALIGNOF_LONGDBL ) printf("NG st60 \n"); 
  if( ALIGNOF(struct TAG61) != ALIGNOF_LONGDBL ) printf("NG st61 \n"); 
  if( ALIGNOF(struct TAG62) != ALIGNOF_LONGDBL ) printf("NG st62 \n"); 
  if( ALIGNOF(struct TAG63) != ALIGNOF_LONGDBL ) printf("NG st63 \n"); 
  if( ALIGNOF(struct TAG64) != ALIGNOF_LONGDBL ) printf("NG st64 \n"); 
  if( ALIGNOF(struct TAG65) != ALIGNOF_LONGDBL ) printf("NG st65 \n"); 


   puts("OK");
}

