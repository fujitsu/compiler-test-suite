#include <iostream>

char const* operator "" _test1(char const* ){
  return 0;
}

unsigned long long int operator "" _test2(unsigned long long int ){
  return 0;
}

long double operator "" _test3(long double){
  return 0;
}

char operator "" _test4(char ){
  return 0;
}

wchar_t operator "" _test5(wchar_t ){
  return 0;
}

char16_t operator "" _test6(char16_t ){
  return 0;
}

char32_t operator "" _test7(char32_t ){
  return 0;
}

char const* operator "" _test8(char const*, std::size_t){
  return 0;
}

const wchar_t* operator "" _test9(const wchar_t*, std::size_t){
  return 0;
}

char16_t const* operator "" _test10(char16_t const*, std::size_t){
  return 0;
}

char32_t const* operator "" _test11(char32_t const*, std::size_t){
  return 0;
}

int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
