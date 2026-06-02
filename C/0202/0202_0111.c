#include <stdio.h>
#include <stdarg.h>
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#include <complex.h>
#endif

void sub01( int a, ...)
{
  va_list ap;
  va_start( ap , a );
  va_end( ap );
}

struct VALIST_02 {
  va_list ap;
} ;
void sub02( int a, ...)
{
  struct VALIST_02 AP;
  va_start( AP.ap , a );
  va_end( AP.ap );
}

void sub03( int a, ...)
{
  va_list ap[1];
  va_start( ap[0] , a );
  va_end( ap[0] );
}

va_list *sub04_0(va_list *ap)
{
  va_list app;
  ap = &app;
  return  ap;
}

void sub04( int a, ...)
{
  va_list *ap;
  va_start( *(sub04_0(ap)) , a );
  va_end( *(sub04_0(ap))  );
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
  va_end( *(AP.ap) );
}


void sub10( va_list ap, int a, ...)
{
  va_start( ap, a );
  va_end( ap );
}

int main()
{
  va_list ap;
  sub01 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub02 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub03 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub04 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub05 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub10 ( ap, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 

  printf(" # OK #\n");
  return 0;
}
