#include <iostream>

template <int I> struct A {};

char xxx(int);
char xxx(float);

template <class T> A<sizeof(xxx((T)0))> f(T){
  std::cout << "ok" << std::endl;
  return A<sizeof(char)>();
}

int main()
{
  f(1);
}
