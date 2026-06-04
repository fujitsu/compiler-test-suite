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
    ci = i ? pa : cia  ; 
    ci = i ? pa : via  ; 
    ci = i ? pa : cvia ; 

    ci = i ? cia : pa   ; 
    ci = i ? cia : via  ; 
    ci = i ? cia : cvia ; 

    ci = i ? via : pa   ; 
    ci = i ? via : cia  ; 
    ci = i ? via : cvia ; 

    ci = i ? cvia : pa  ; 
    ci = i ? cvia : cia ; 
    ci = i ? cvia : via ; 


    ci = i ? cia  : pa ; 
    ci = i ? via  : pa ; 
    ci = i ? cvia : pa ; 

    ci = i ? pa   : cia ; 
    ci = i ? via  : cia ; 
    ci = i ? cvia : cia ; 

    ci = i ? pa   : via ; 
    ci = i ? cia  : via ; 
    ci = i ? cvia : via ; 

    ci = i ? pa  : cvia ; 
    ci = i ? cia : cvia ; 
    ci = i ? via : cvia ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
