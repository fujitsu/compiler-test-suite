#include <iostream>

struct X{
  int val_;
  constexpr X(int x) : val_(x){
  }
};

int main(void){
  constexpr X a(3);

  static_assert( a.val_ == 3, "ng" );
  std::cout << "ok" << std::endl;

  return 0;
}
