#include <stdio.h>

#if !defined(__STDC_NO_ATOMICS__)
struct A{
  _Atomic(int*) x;
};
#endif

int main(void){
#if !defined(__STDC_NO_ATOMICS__)
  _Atomic(int) x = 10;
#else
  int x = 10;
#endif

  if(x == 10){
    printf("ok\n");
  } else {
    printf("ng\n");
  }
 
  return 0;
}
