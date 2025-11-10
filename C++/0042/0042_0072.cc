#include <cstdio>
#include <typeinfo>
#include <cxxabi.h>

char *demangle(const char *mangled)
{
  int status;
  return abi::__cxa_demangle(mangled, 0, 0, &status);
}

  int xxixx;
  decltype(xxixx) xxaxx = 1;

decltype(xxixx) xxfuncaxx() {
  return (decltype(xxixx))10;
}

int xxfuncbxx() {
  return (int)10;
}

int x;
decltype(x) y1; 
decltype((x)) y2=y1; 

int main()
{
  auto b = xxixx;
  int stat;
  printf("%s\n", demangle(typeid(int).name()));
  printf("%s\n", demangle(typeid(xxixx).name()));
  printf("%s\n", demangle(typeid(xxaxx).name()));
  printf("%s\n", demangle(typeid(b).name()));
}
