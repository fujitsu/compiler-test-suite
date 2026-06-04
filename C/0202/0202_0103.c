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
    vi = i ? pa : cia  ; 
    vi = i ? pa : via  ; 
    vi = i ? pa : cvia ; 

    vi = i ? cia : pa   ; 
    vi = i ? cia : via  ; 
    vi = i ? cia : cvia ; 

    vi = i ? via : pa   ; 
    vi = i ? via : cia  ; 
    vi = i ? via : cvia ; 

    vi = i ? cvia : pa  ; 
    vi = i ? cvia : cia ; 
    vi = i ? cvia : via ; 


    vi = i ? cia  : pa ; 
    vi = i ? via  : pa ; 
    vi = i ? cvia : pa ; 

    vi = i ? pa   : cia ; 
    vi = i ? via  : cia ; 
    vi = i ? cvia : cia ; 

    vi = i ? pa   : via ; 
    vi = i ? cia  : via ; 
    vi = i ? cvia : via ; 

    vi = i ? pa  : cvia ; 
    vi = i ? cia : cvia ; 
    vi = i ? via : cvia ; 
    return;
  }
int main() {
    printf(" ok\n");
  }
