#include <stdio.h>
int *foo() {
  static int ia[3]={1,2,3};
  int *ip=ia; return ip ;
}
int main() { printf("%d\n",*(foo()) ) ; }
