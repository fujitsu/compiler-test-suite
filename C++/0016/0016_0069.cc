
int a1[3] = {10,20,30};
int (*a2)[3] = &a1;
int (*&a)[3] = a2;
int *b0, *&b = b0;
int c0[1], (&c)[1] = c0;
#include <stdio.h>
int main(){
  puts("ok");
}
