#include <stdio.h>

struct t {
  unsigned short int fs:2;
}*p;

void sub () {
 struct t t1, t2;

  t1.fs = 0;
  t2.fs = 1;
  
  if (t1.fs == t2.fs)
    puts("NG");
  else
    puts("OK");
}

int main() {
  struct t t1;

  p = &t1;
  p->fs = 0;
  
  if (p->fs == 0)
    puts("OK");
  else
    puts("NG");

  sub ();
}
