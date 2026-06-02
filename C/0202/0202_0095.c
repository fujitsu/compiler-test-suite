#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p;
    int const *ci;
    int volatile *vi;
    int const volatile *cvi;
    int i;
    p = i ? p : ci  ; 
    p = i ? p : vi  ; 
    p = i ? p : cvi ; 

    p = i ? ci : p  ; 
    p = i ? ci : vi  ; 
    p = i ? ci : cvi ; 

    p = i ? vi : p   ; 
    p = i ? vi : ci  ; 
    p = i ? vi : cvi ; 

    p = i ? cvi : p  ; 
    p = i ? cvi : ci ; 
    p = i ? cvi : vi ; 


    p = i ? ci  : p ; 
    p = i ? vi  : p ; 
    p = i ? cvi : p ; 

    p = i ? p   : ci ; 
    p = i ? vi  : ci ; 
    p = i ? cvi : ci ; 

    p = i ? p   : vi ; 
    p = i ? ci  : vi ; 
    p = i ? cvi : vi ; 

    p = i ? p  : cvi ; 
    p = i ? ci : cvi ; 
    p = i ? vi : cvi ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
