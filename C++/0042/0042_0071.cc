#include <cstdio>
#include <typeinfo>
#include <cxxabi.h>

char *demangle(const char *mangled)
{
  int status;
  return abi::__cxa_demangle(mangled, 0, 0, &status);
}

int main()
{
  int i;
  decltype(i) a = 1;
  auto b = i;
  int stat;
  printf("%s\n", demangle(typeid(int).name()));
  printf("%s\n", demangle(typeid(i).name()));
  printf("%s\n", demangle(typeid(a).name()));
  printf("%s\n", demangle(typeid(b).name()));
}
