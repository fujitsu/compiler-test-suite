#include <iostream>


enum test1 : int { Zero, One };
enum class test2 : long { Two };
enum struct test3 : char { Three };

enum test4 : long long int { LONG };
enum test5 : unsigned long long { UNSIGNED };

enum test6 : bool { BOOL };

int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
