#include <iostream>
#include <utility>
#include <vector>
#include <array>
#include <valarray>
#include <initializer_list>
#include <list>

enum A{};
enum B : int {};
enum class C{};
enum class D :long{};

struct X{};
class Y{};
struct XX : public X{};
class YY: public Y{};
struct XY: public XX, YY{};

template<class T, class U>
bool test(void){
  return std::is_same<T, U>::value;
}

int main(void){
  auto ret1 = test<D, std::vector<int>>();
  auto ret2 = test<D, std::array<long,10>>();
  auto ret3 = test<D, std::valarray<D>>();
  auto ret4 = test<D, std::initializer_list<D>>();

  if(!ret1 &&
     !ret2 &&
     !ret3 &&
     !ret4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
