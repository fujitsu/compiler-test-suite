template <class T> class A {};
template <class T> bool operator<(const A<T> a1, const A<T> a2) {
  return (&a1 < &a2);
}
template <class T1, class T2> bool operator<(const A<T1> &a1, const T2 a2) {
  return true;
}

int test() {
  A<int> a;
  A<int> b;
  return (a < b);
}

#include <cstdio>

int main() {
  (void)test();

  printf("test ok\n");

  return 0;
}
