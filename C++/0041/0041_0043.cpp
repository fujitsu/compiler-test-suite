#include <iostream>

int operator"" _test1(char const*){
  return 0;
}

int operator"" _test2(unsigned long long){
  return 1;
}

int operator"" _test3(long double){
  return 2;
}

int operator"" _test4(char){
  return 3;
}

int operator"" _test5(wchar_t){
  return 4;
}

int operator"" _test6(char16_t){
  return 5;
}

int operator"" _test7(char32_t){
  return 6;
}

int operator"" _test8(char const*, std::size_t){
  return 7;
}

int operator"" _test9(const wchar_t*, std::size_t){
  return 8;
}

int operator"" _test10(const char16_t*, std::size_t){
  return 9;
}

int operator"" _test11(const char32_t*, std::size_t){
  return 10;
}

int main(void){
  
  if( 10_test1 == 0 && 10_test2 == 1 &&
      3.14_test3 == 2 && 'a'_test4 == 3 &&
      L'a'_test5 == 4 && u'a'_test6 == 5 &&
      U'a'_test7 == 6 && "abc"_test8 == 7 &&
      L"abc"_test9 == 8 && u"abc"_test10 == 9 &&
      U"abc"_test11 == 10){
    std::cout << "ok" << std::endl;
  } else { 
    std::cout << "ng" << std::endl;
  }

  return 0;
}
