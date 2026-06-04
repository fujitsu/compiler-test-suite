#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p;
    int const *ci;
    int volatile *vi;
    int const volatile *cvi;
    int i;
    vi = i ? p : ci  ; 
    vi = i ? p : vi  ; 
    vi = i ? p : cvi ; 

    vi = i ? ci : p   ; 
    vi = i ? ci : vi  ; 
    vi = i ? ci : cvi ; 

    vi = i ? vi : p   ; 
    vi = i ? vi : ci  ; 
    vi = i ? vi : cvi ; 

    vi = i ? cvi : p  ; 
    vi = i ? cvi : ci ; 
    vi = i ? cvi : vi ; 


    vi = i ? ci  : p ; 
    vi = i ? vi  : p ; 
    vi = i ? cvi : p ; 

    vi = i ? p   : ci ; 
    vi = i ? vi  : ci ; 
    vi = i ? cvi : ci ; 

    vi = i ? p   : vi ; 
    vi = i ? ci  : vi ; 
    vi = i ? cvi : vi ; 

    vi = i ? p  : cvi ; 
    vi = i ? ci : cvi ; 
    vi = i ? vi : cvi ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
