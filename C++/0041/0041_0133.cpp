#include <iostream>

constexpr int sum1(int size, const int* a, int index){
  return index < size ? a[index] + sum1(size, a, index+1) : 0;
}

constexpr int sum2(int size, const int* a){
  return size == 1 ? a[0] : a[size-1] + sum2(size-1, a);
}

int main(void){
  constexpr int test[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  constexpr int size = sizeof(test) / sizeof(test[0]);
  static_assert( size == 10, "size is not 10" );

  static_assert( sum1(size, test, 0) == 55, "sum1 is not 55");

  static_assert( sum2(size, test) == 55, "sum2 is not 55");

  std::cout << "ok" << std::endl;
  
  return 0;
}
