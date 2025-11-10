#include <iostream>

enum struct Test1 : char { A, B, C };
enum struct Test2 : char16_t { A, B, C };
enum struct Test3 : char32_t { A, B, C };
enum struct Test4 : wchar_t { A, B, C };

int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
