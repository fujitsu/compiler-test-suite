#include <iostream>

void compute(void) noexcept
{
  std::cout << "ok" << std::endl;
}

int main(void){

  compute();

  return 0;
}
