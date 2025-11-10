#include <iostream>



enum A : short;


enum class B;
enum class B : int;


enum struct C : long ;
enum struct C : long ;


enum class D : int;
enum struct D : int;


enum struct E : long;
enum class E : long;


int main(void){
  std::cout << "ok" << std::endl;

  return 0;
}
