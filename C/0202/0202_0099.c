#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p;
    int const *ci;
    int volatile *vi;
    int const volatile *cvi;
    int i;
    ci = i ? p+1 : ci+1  ; 
    ci = i ? p+1 : vi+1  ; 
    ci = i ? p+1 : cvi+1 ; 

    ci = i ? ci+1 : p+1   ; 
    ci = i ? ci+1 : vi+1  ; 
    ci = i ? ci+1 : cvi+1 ; 

    ci = i ? vi+1 : p+1   ; 
    ci = i ? vi+1 : ci+1  ; 
    ci = i ? vi+1 : cvi+1 ; 

    ci = i ? cvi+1 : p+1  ; 
    ci = i ? cvi+1 : ci+1 ; 
    ci = i ? cvi+1 : vi+1 ; 


    ci = i ? ci+1  : p+1 ; 
    ci = i ? vi+1  : p+1 ; 
    ci = i ? cvi+1 : p+1 ; 

    ci = i ? p+1   : ci+1 ; 
    ci = i ? vi+1  : ci+1 ; 
    ci = i ? cvi+1 : ci+1 ; 

    ci = i ? p+1   : vi+1 ; 
    ci = i ? ci+1  : vi+1 ; 
    ci = i ? cvi+1 : vi+1 ; 

    ci = i ? p+1  : cvi+1 ; 
    ci = i ? ci+1 : cvi+1 ; 
    ci = i ? vi+1 : cvi+1 ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
