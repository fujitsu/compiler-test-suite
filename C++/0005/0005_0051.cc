#include <stdio.h>

void foo() {
#if __cplusplus
try {
#pragma omp parallel
  for(int i = 0; i < 10; i++ ) {
     ;
  }
}
catch ( int ){}
#endif

}


int main()
{
  foo();
  printf("### OK ###\n");
  return 0;
}

