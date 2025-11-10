#include <iostream>

int main(void){

  auto str1 = "123\"abc\n456";
  auto str2 = R"delimiter(123"abc
456)delimiter";

  auto str3 = uR"(abc)";

  std::cout << str1 << std::endl;
std::cout << str2 << std::endl;


  return 0;
}
