#include <cassert>
#include <stdio.h>

template <auto v> struct Y {
  int f() { return 1; }
};

template <auto *p>
struct Y<p>
{
  int f() { return 2; }
};

template <auto **pp>
struct Y<pp>
{
  int f() { return 3; }
};

template <auto *p0>
void g(Y<p0> y)
{
  assert(y.f() == 2);
}

template <auto **pp0>
void g(Y<pp0> y)
{
  assert(y.f() == 3);
}

char a[] = "123456";
constexpr char **p = NULL;

int main() {
  Y<a> y1;
  g(y1);
  Y<p> y2;
  g(y2);
}
