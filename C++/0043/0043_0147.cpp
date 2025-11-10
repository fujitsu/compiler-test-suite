#include <iostream>
#include <ratio>
#include <chrono>

int main(void){
  using a = std::chrono::duration<long long, std::nano>;
  using b = std::chrono::duration<long long, std::micro>;
  using c = std::chrono::duration<long long, std::milli>;

  std::cout << "ok" << std::endl;

  return 0;
}

