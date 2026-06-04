#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p;
    int const *ci;
    int volatile *vi;
    int const volatile *cvi;
    int *pa[1];
    int const *cia[1];
    int volatile *via[1];
    int const volatile *cvia[1];
    int i;
    p = i ? pa : cia  ; 
    p = i ? pa : via  ; 
    p = i ? pa : cvia ; 

    p = i ? cia : pa   ; 
    p = i ? cia : via  ; 
    p = i ? cia : cvia ; 

    p = i ? via : pa   ; 
    p = i ? via : cia  ; 
    p = i ? via : cvia ; 

    p = i ? cvia : pa  ; 
    p = i ? cvia : cia ; 
    p = i ? cvia : via ; 


    p = i ? cia  : pa ; 
    p = i ? via  : pa ; 
    p = i ? cvia : pa ; 

    p = i ? pa   : cia ; 
    p = i ? via  : cia ; 
    p = i ? cvia : cia ; 

    p = i ? pa   : via ; 
    p = i ? cia  : via ; 
    p = i ? cvia : via ; 

    p = i ? pa  : cvia ; 
    p = i ? cia : cvia ; 
    p = i ? via : cvia ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
