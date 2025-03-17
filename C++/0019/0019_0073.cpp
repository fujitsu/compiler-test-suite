#include <cassert>
int flag = 0;

struct X {
  virtual ~X() {}
};
template <class T, int N> struct Y {
  virtual ~Y() {}
  void foo() const { flag++; }
};

template <int N = 3, class U = X, template <class, int> class T = Y>
T<U, N> vt = T<U, N>();

struct Z {
  template <int N = 3, class U = X, template <class, int> class T = Y>
  static T<U, N> dt;
};

template <int N, class U, template <class, int> class T>
T<U, N> Z::dt = T<U, N>();

template <class T, int N> struct W {
  void foo() const { flag = 0; }
};

void test() {
  vt<>.foo();
  assert(flag == 1);
  vt<11>.foo();
  assert(flag == 2);
  vt<22, int, W>.foo();
  assert(flag == 0);

  Z::dt<>.foo();
  assert(flag == 1);
  Z::dt<33>.foo();
  assert(flag == 2);
  Z::dt<44, double, W>.foo();
  assert(flag == 0);
}

int main() { test(); }
