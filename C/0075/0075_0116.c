#include <stdio.h>
#include <stdarg.h>
va_list eap;
void v1(int num,...);
void v2(int num,...);
int main( ) {
v1(3,5,2);
v2(3,10,100);
}
void v1(int num,...) {
  void subpr( );
  int sum;
  va_list ap;
  
  va_start(ap, num);
  subpr(&ap);
  sum = va_arg(ap, int);
  if (sum==5) printf("ok1\n");
  sum = va_arg(ap, int);
  if (sum==2) printf("ok2\n");
} 
void subpr(ap) va_list ap; {printf("***** test1 *****\n");}
void v2(int num,...) {
  int sum;
  va_start(eap, num);
  printf("***** test2 *****\n");
  sum = va_arg(eap, int);
  if (sum==10) printf("ok3\n");
  sum = va_arg(eap, int);
  if (sum==100) printf("ok4\n");
}

