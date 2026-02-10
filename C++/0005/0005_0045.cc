#include <stdio.h>
#include <stdarg.h>
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#include <complex.h>
#endif

void sub01( int a, ...)
{
  va_list ap;
  va_start( ap , a );
  va_arg( ap , int );
}

struct VALIST_02 {
  va_list ap;
} ;
void sub02( int a, ...)
{
  struct VALIST_02 AP;
  va_start( AP.ap , a );
  va_arg( AP.ap , int );
}

void sub03( int a, ...)
{
  va_list ap[1];
  va_start( ap[0] , a );
  va_arg( ap[0] , int );
}

va_list *sub04_0(va_list *ap)
{
  static va_list app;
  ap = &app;
  return  ap;
}

void sub04( int a, ...)
{
  va_list *ap;
  va_start( *(sub04_0(ap)) , a );
  va_arg( *(sub04_0(ap)) , int );
}

struct VALIST_05 {
  va_list *ap;
} ;
void sub05( int a, ...)
{
  struct VALIST_05 AP;
  va_list ap;
  AP.ap = &ap;

  va_start( *(AP.ap) , a );
  va_arg( *(AP.ap) , int );
}





void sub08( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , int );
}



void sub10( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , double );
}

void sub11( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , long double );
}

#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
void sub12( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , _Complex );
}
#endif

union U1 {
   int i;
   long l;
};
void sub13( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , union U1 );
}

struct S1 {
   int i;
   long l;
};
void sub14( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , struct S1 );
}

enum E1 {
   i,
   l
};
void sub15( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , enum E1 );
}

void sub16( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , int *);
}


#ifdef __cplusplus
class C1{
public:
    int a;
    int b;
};
void sub18( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , class C1);
}

class C2 {
  va_list ap_1; 
  va_list ap_2; 
}; 


#endif
void sub21( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , void * );
}

void sub22( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  va_arg( ap , int );
}

void sub23( int a, ...)
{
  va_list ap;
  int i;

  va_start( ap , a );
  i = va_arg( ap , int );
}

void sub24( int a, ...)
{
  va_list ap;

  va_start( ap , a );
  printf("", va_arg( ap , int ));
}







void sub28( va_list ap, int a, ...)
{
  va_start( ap , a );
  va_arg( ap , int );
}

int main()
{
  va_list ap;
  sub01 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub02 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub03 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub04 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub05 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 


  sub08 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 

  sub10 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub11 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  sub12 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
#endif
  sub13 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub14 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub15 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub16 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
#ifdef __cplusplus

  sub18 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 

#endif
  sub21 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub22 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub23 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub24 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 



  sub28 ( ap, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 

  printf("# OK #\n");
  return 0;
}
