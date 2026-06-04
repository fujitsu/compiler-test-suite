#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p;
    int const *ci;
    int volatile *vi;
    int const volatile *cvi;
    int i;
    p = i ? p+1 : ci+1  ; 
    p = i ? p+1 : vi+1  ; 
    p = i ? p+1 : cvi+1 ; 

    p = i ? ci+1 : p+1   ; 
    p = i ? ci+1 : vi+1  ; 
    p = i ? ci+1 : cvi+1 ; 

    p = i ? vi+1 : p+1   ; 
    p = i ? vi+1 : ci+1  ; 
    p = i ? vi+1 : cvi+1 ; 

    p = i ? cvi+1 : p+1  ; 
    p = i ? cvi+1 : ci+1 ; 
    p = i ? cvi+1 : vi+1 ; 


    p = i ? ci+1  : p+1 ; 
    p = i ? vi+1  : p+1 ; 
    p = i ? cvi+1 : p+1 ; 

    p = i ? p+1   : ci+1 ; 
    p = i ? vi+1  : ci+1 ; 
    p = i ? cvi+1 : ci+1 ; 

    p = i ? p+1   : vi+1 ; 
    p = i ? ci+1  : vi+1 ; 
    p = i ? cvi+1 : vi+1 ; 

    p = i ? p+1  : cvi+1 ; 
    p = i ? ci+1 : cvi+1 ; 
    p = i ? vi+1 : cvi+1 ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
