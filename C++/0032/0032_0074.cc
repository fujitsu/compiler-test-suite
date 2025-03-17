#include <stdio.h>

struct S { int i; S(int i){printf("ok\n");}};
struct T {
  S s;
  int j;
}obj= {0,2};

int main(){}
