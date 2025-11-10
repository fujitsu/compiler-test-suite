#include <iostream>
#include <utility>

enum ENUM{
  ZERO, ONE, TWO
};

int main(void){

  auto ret1 = sizeof( std::declval<int>() );
  auto ret2 = sizeof( std::declval<float>() );
  auto ret3 = sizeof( std::declval<double>() );
  auto ret4 = sizeof( std::declval<long>() );
  auto ret5 = sizeof( std::declval<bool>() );
  auto ret6 = sizeof( std::declval<unsigned>() );
  auto ret7 = sizeof( std::declval<ENUM>() );
  auto ret8 = sizeof( std::declval<int[10]>() );
  auto ret9 = sizeof( std::declval<int*>() );
  auto ret10 = sizeof( std::declval<const int>() );
  auto ret11 = sizeof( std::declval<volatile int>() );
  auto ret12 = sizeof( std::declval<const volatile int>() );
  
  if(ret1 == sizeof(int)      &&
     ret2 == sizeof(float)    &&
     ret3 == sizeof(double)   &&
     ret4 == sizeof(long)     &&
     ret5 == sizeof(bool)     &&
     ret6 == sizeof(unsigned) &&
     ret7 == sizeof(ENUM)     &&
     ret8 == sizeof(int[10])    &&
     ret9 == sizeof(int*)       &&
     ret10 == sizeof(const int) &&
     ret11 == sizeof(volatile int) &&
     ret12 == sizeof(const volatile int) ){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
