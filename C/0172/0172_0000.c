#include <stdio.h>
#include <stdarg.h>

short int sum1(short int num, ...);
short int sum2(short int num, ...);

int main(){
  short int ans;

  ans = sum1(4, 1, 2, 3, 4);
  printf("ans = %hd\n", ans);

#if defined (X86_64)
  ans = sum2(4, (float)1, (float)2, (float)3, (float)4);
#endif
  printf("ans = %hd\n", ans);
}

short int sum1(short int num, ...){
  short int ans = 0;
  va_list argptr;

  va_start(argptr, num);
  for( ; num > 0; num--){
    ans += va_arg(argptr,signed short int);
  }

  va_end(argptr);
  return(ans);
}

short int sum2(short int num, ...){
  short int ans = 0;
  va_list argptr;

  va_start(argptr, num);
  for( ; num > 0; num--){
    ans += (int)va_arg(argptr,float);
  }

  va_end(argptr);
  return(ans);
}
