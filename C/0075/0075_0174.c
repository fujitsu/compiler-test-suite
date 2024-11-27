#include <stdio.h>
#include <stdarg.h>
int iadd(int num,...);
int main( ) {
  printf("**********  TEST START **********\n");

if (iadd(3,1,2,3)==6) printf("*** OK ***\n");
                   else printf("*** NG ***\n");
  printf("**********  TEST  END  **********\n");
}
int iadd(int num,...) {
int i,sum;

  va_list ap;

  va_start(ap, num);

  for (i=0,sum=0; i < num; i++) {

  sum += va_arg(ap, int);
  }


  return(sum);

}

