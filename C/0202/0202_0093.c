#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int *p, *q;
    p = c ? x : y; 
    q = x; 
    p = c ? p : q; 
    return;
  }
int main() {
    printf(" ok\n");
  }
