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
  auto ret1 = test<int, std::vector<int>>();
  auto ret2 = test<int, std::array<int,10>>();
  auto ret3 = test<int, std::valarray<int>>();
  auto ret4 = test<int, std::initializer_list<int>>();
  auto ret5 = test<int, std::list<int>>();

  if(!ret1 &&
     !ret2 &&
     !ret3 &&
     !ret4 &&
     !ret5){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
