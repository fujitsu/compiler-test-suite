#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p;
    int const *ci;
    int volatile *vi;
    int const volatile *cvi;
    int i;
    cvi = i ? p : ci  ; 
    cvi = i ? p : vi  ; 
    cvi = i ? p : cvi ; 

    cvi = i ? ci : p   ; 
    cvi = i ? ci : vi  ; 
    cvi = i ? ci : cvi ; 

    cvi = i ? vi : p   ; 
    cvi = i ? vi : ci  ; 
    cvi = i ? vi : cvi ; 

    cvi = i ? cvi : p  ; 
    cvi = i ? cvi : ci ; 
    cvi = i ? cvi : vi ; 


    cvi = i ? ci  : p ; 
    cvi = i ? vi  : p ; 
    cvi = i ? cvi : p ; 

    cvi = i ? p   : ci ; 
    cvi = i ? vi  : ci ; 
    cvi = i ? cvi : ci ; 

    cvi = i ? p   : vi ; 
    cvi = i ? ci  : vi ; 
    cvi = i ? cvi : vi ; 

    cvi = i ? p  : cvi ; 
    cvi = i ? ci : cvi ; 
    cvi = i ? vi : cvi ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
