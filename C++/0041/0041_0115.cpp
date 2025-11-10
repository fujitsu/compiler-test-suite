#include <iostream>

class A{
  int value_;
  friend void func(A&);
  friend class B;
};

void func(A& a){
  a.value_ = 10;
}

class B{
public:
  static int getvalue(A& a){
    return a.value_;
  }
};

int main(void){
  A x;

  func(x);

  if(B::getvalue(x) == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}


