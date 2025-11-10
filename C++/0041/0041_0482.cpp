#include <iostream>
#include <initializer_list>

template<class T>
bool test(T x){
  bool ret = false;

  if(std::is_same<decltype(x), T>::value){
    ret = true;
  }

  return ret;
}

int main(void){
  std::initializer_list<int> a;
  std::initializer_list<float> b;
  std::initializer_list<double> c;
  std::initializer_list<long> d;
  std::initializer_list<bool> e;
  std::initializer_list<int*> f;
  
  auto ret1 = test(a);
  auto ret2 = test(b);
  auto ret3 = test(c);
  auto ret4 = test(d);
  auto ret5 = test(e);
  auto ret6 = test(f);

  if(ret1 && ret2 && ret3 &&
     ret4 && ret5 && ret6){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
