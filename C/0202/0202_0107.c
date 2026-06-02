#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p;
    int *p1;
    int *vi;
    int *cvi;
    int i;
    p = i ? p : 0  ; 
    p = i ? 0 : p1 ; 
    p = i ? p : 0  ; 
    p = i ? (int*)0 : (int*)0  ; 

    p = i ? p : (int *)0  ; 
    p = i ? (int *)0 : p1 ; 
    p = i ? p : (int *)0  ; 
    p = i ? (int *)0 : (int *)0  ; 

    p = i ? p : 9  ; 
    p = i ? 9 : p1 ; 
    p = i ? p : 9  ; 
    p = i ? (int*)9 : (int*)9  ; 

    p = i ? p : (int *)9  ; 
    p = i ? (int *)9 : p1 ; 
    p = i ? p : (int *)9  ; 
    p = i ? (int *)9 : (int *)9  ; 

    return;
  }
int main() {
    printf(" ok\n");
  }
