#include <iostream>

struct type{
  type();
  type(const type&);
};
type::type() = default;
inline type::type(const type&) = default;


int main(void){
  type a;

  std::cout << "ok" << std::endl;

  return 0;
}
