#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p;
    int const *ci;
    int volatile *vi;
    int const volatile *cvi;
    int i;
    ci = i ? p : ci  ; 
    ci = i ? p : vi  ; 
    ci = i ? p : cvi ; 

    ci = i ? ci : p   ; 
    ci = i ? ci : vi  ; 
    ci = i ? ci : cvi ; 

    ci = i ? vi : p   ; 
    ci = i ? vi : ci  ; 
    ci = i ? vi : cvi ; 

    ci = i ? cvi : p  ; 
    ci = i ? cvi : ci ; 
    ci = i ? cvi : vi ; 


    ci = i ? ci  : p ; 
    ci = i ? vi  : p ; 
    ci = i ? cvi : p ; 

    ci = i ? p   : ci ; 
    ci = i ? vi  : ci ; 
    ci = i ? cvi : ci ; 

    ci = i ? p   : vi ; 
    ci = i ? ci  : vi ; 
    ci = i ? cvi : vi ; 

    ci = i ? p  : cvi ; 
    ci = i ? ci : cvi ; 
    ci = i ? vi : cvi ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
