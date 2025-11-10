#include <iostream>
#include <array>

int main(void){
  using namespace std;
  
  auto a = tuple_size< array<int, 0> >::value;
  auto b = tuple_size< array<float, 1> >::value;
  auto c = tuple_size< array<double, 2> >::value;
  auto d = tuple_size< array<long, 3> >::value;
  auto e = tuple_size< array<bool, 5> >::value;
  auto f = tuple_size< array<int*, 10> >::value;

  if(a == 0 && b == 1 && c == 2 &&
     d == 3 && e == 5 && f == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
