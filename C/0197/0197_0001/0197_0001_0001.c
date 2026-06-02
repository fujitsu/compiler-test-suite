#include <stdio.h>
struct aaa {
  int a;
  int b;
  int c;
};

extern int idx;
struct aaa sub2(int i);
void sub1(void);

int main() {
  idx = 1;
  sub1();
  printf("ok\n");
}

void sub1(){
  struct aaa b[10];
  b[idx] = sub2(idx);
}
