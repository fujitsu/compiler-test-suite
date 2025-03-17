#include <iostream>

struct {
  char c;
  short s:1;
} aa = {1}; 

int main()
{ 
  short s1, s2;
  struct {
    char c;
    short s:1;
  } a = {1}; 

  aa.s = 1;
  a.s = 1;
  s1 = a.s;
  s2 = aa.s;

#if __INTEL_COMPILER
  if (a.s == -1 && s1 == -1 && s2 == -1) {
#else
  if (a.s == -1 && s1 == -1 && s2 == -1) {
#endif
    std::cout << "OK" << std::endl;
  }
  else {
    printf("ng\n");
  }
  return 0;
}
