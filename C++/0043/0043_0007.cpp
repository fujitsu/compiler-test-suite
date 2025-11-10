#include <iostream>

struct X {};
struct Y {
  Y(X){}
};


template <class T> auto f(T t1, T t2) -> decltype(t1 + t2){ 
  std::cout << "ng" << std::endl;
  return decltype(t1 + t2)();
}


X f(Y, Y){ 
  std::cout << "ok" << std::endl;
  return X();
}

int main(void){
  X x1, x2;
  X x3 = f(x1, x2); 

  return 0;
}

