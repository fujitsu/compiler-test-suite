#include <stdio.h>

template<typename T> T Func(T Para) {
  return Para;
}

int Gunc(int Param) {
  return Func(Param);
}

int main()
{
  printf("%d\n", Gunc(100));
}
