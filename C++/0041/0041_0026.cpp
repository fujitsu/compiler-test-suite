#include <iostream>

enum test1 : int { one };
enum class test2 : long { two };

enum struct test3 : char { three };
enum struct test4 : wchar_t { four };



class X{};


int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
