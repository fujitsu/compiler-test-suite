#include <stdio.h>

const class Y {
public:
  const int i;
  Y(int j) : i(j){};
} y(1);

const class X {
public:
  const int i : 2;
  X(int j) : i(j){};
} x(0x1);
int main() {
  if (y.i == 1)
    puts("bstore : ok");
  else
    puts("bstore : ng");
  if (x.i == 0x1)
    puts("store : ok");
  else
    puts("store : ng");
}
