
#include <stdio.h>
#include <stdarg.h>

void sum_short(short int num, ...){
  short int ans = 0;
  va_list ap;
  va_start(ap, num);
  ans = (short int)va_arg(ap,double);
  if(ans == 1)
    printf("sum_short : ok\n");
  else
    printf("sum_short : ng  ans=%d\n",ans);
  va_end(ap);
}

void sum_int(int num, ...){
  int ans = 0;
  va_list ap;
  va_start(ap, num);
  ans = (int)va_arg(ap,double);
  if(ans == 1)
    printf("sum_int : ok\n");
  else
    printf("sum_int : ng  ans=%d\n",ans);
  va_end(ap);
}

void sum_long(int num, ...){
  long ans = 0;
  va_list ap;
  va_start(ap, num);
  ans = (long)va_arg(ap,double);
  if(ans == 1)
    printf("sum_long : ok\n");
  else
    printf("sum_long : ng  ans=%ld\n",ans);
  va_end(ap);
}


int main(){
 sum_short(4, (double)1);
 sum_int(4, (double)1);
 sum_long(4, (double)1);
}
