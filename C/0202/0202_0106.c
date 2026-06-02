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
    cvi = i ? pa : cia  ; 
    cvi = i ? pa : via  ; 
    cvi = i ? pa : cvia ; 

    cvi = i ? cia : pa   ; 
    cvi = i ? cia : via  ; 
    cvi = i ? cia : cvia ; 

    cvi = i ? via : pa   ; 
    cvi = i ? via : cia  ; 
    cvi = i ? via : cvia ; 

    cvi = i ? cvia : pa  ; 
    cvi = i ? cvia : cia ; 
    cvi = i ? cvia : via ; 


    cvi = i ? cia  : pa ; 
    cvi = i ? via  : pa ; 
    cvi = i ? cvia : pa ; 

    cvi = i ? pa   : cia ; 
    cvi = i ? via  : cia ; 
    cvi = i ? cvia : cia ; 

    cvi = i ? pa   : via ; 
    cvi = i ? cia  : via ; 
    cvi = i ? cvia : via ; 

    cvi = i ? pa  : cvia ; 
    cvi = i ? cia : cvia ; 
    cvi = i ? via : cvia ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
