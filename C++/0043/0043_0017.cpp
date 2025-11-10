#include <iostream>

void func1(void) noexcept(true)
{
  std::cout << "ok" << std::endl;
}

void func2(void) noexcept(false)
{
  std::cout << "ok" << std::endl;
}

int main(void){

  auto x = noexcept( func1() );
  auto y = noexcept( func2() );

  if( x == true && y == false){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
