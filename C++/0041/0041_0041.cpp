#include <iostream>

int main(void){
  auto str_org = "123\nabc";

  auto str1 = R"(123
abc)";

  auto str2 = uR"(123
abc)";

  std::cout << "ok" << std::endl;

  return 0;
}
