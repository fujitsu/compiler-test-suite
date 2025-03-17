#include <stdio.h>

int ng;
class B {
public:
  int b;
  operator B &() {
    printf("ng\n");
    ng++;
    return *this;
  }
};
int main() {
  B bobj;
  B *bptr;
  B &bref = bobj;

  (B &)bobj;
  if (ng == 0)
    printf("ok\n");
}
