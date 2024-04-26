#include <stdio.h>

#if !defined(__STDC_NO_ATOMICS__)
struct A{
  _Atomic(int*) x;
};

struct B{
  _Atomic struct A x;
};
#endif

int main(void){
#if !defined(__STDC_NO_ATOMICS__)
  _Atomic double b = 3.14;
#else
  double b = 3.14;
#endif

  if(b == 3.14){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
