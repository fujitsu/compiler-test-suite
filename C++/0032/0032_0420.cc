
#include <stdio.h>

template<typename T> struct S {
  S<T>() { }
  typedef void F(T);
  F f;
};
template<typename T> inline void S<T>::f(T) {}

typedef struct {
  S<int> mem;
} noname_struct_type;

int main() {
  noname_struct_type obj;

  S<int>().f(2);

  printf("test ok\n");
  return 0;
}

