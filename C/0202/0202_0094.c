#include <stdio.h>
  int x[4],y[4];
  void func(int c) {
    int  *a;
    int const *p;
    int const *q;
    int i;
    a = i ? p+1 : q+1; 

    a = i ? p : q; 
    return;
  }
int main() {
    printf(" ok\n");
  }
