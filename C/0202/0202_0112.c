#include <stdio.h>
#include <stdarg.h>

int sub01( int a, ...)
{
  va_list ap;
  va_start( ap , a );
}

struct VALIST_02 {
  va_list ap;
} ;
int sub02( int a, ...)
{
  struct VALIST_02 AP;
  va_start( AP.ap , a );
}

int sub03( int a, ...)
{
  va_list ap[1];
  va_start( ap[0] , a );
}

va_list *sub04_0(va_list *ap)
{
  va_list app;
  ap = &app;
  return  ap;
}

int sub04( int a, ...)
{
  va_list *ap;
  va_start( *(sub04_0(ap)) , a );
}

struct VALIST_05 {
  va_list *ap;
} ;
int sub05( int a, ...)
{
  struct VALIST_05 AP;
  va_list ap;
  AP.ap = &ap;

  va_start( *(AP.ap) , a );
}

int sub07( int a, ...)
{
  va_list ap;

  va_start( ap , a );
}

int sub10( int a, ...)
{
  va_list ap;

  va_start( ap , a );
}

int sub15( va_list ap, int a, ...)
{
  va_start( ap , a );
}

int main()
{
  va_list ap;
  sub01 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub02 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub03 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub04 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub05 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub07 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub10 ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
  sub15 ( ap, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 

  printf(" # OK #\n");
  return 0;
}
