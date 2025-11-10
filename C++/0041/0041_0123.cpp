#include <iostream>
#include <utility>

struct X{
  X(){
    std::cout << "default ctor" << std::endl;
  }

  X(X const& obj){
    std::cout << "copy ctor" << std::endl;
  }

  X(X&& obj){
    std::cout << "move ctor" << std::endl;
  }

  X& operator=(X const& obj){
    std::cout << "copy operator" << std::endl;
    return *this;
  }

  X& operator=(X&& obj){
    std::cout << "move operator" << std::endl;
    return *this;
  }
};

X func(void){
  return X();
}

int main(void){
  X x( X{} );
  X y( func() );
  X z( std::move(x) );
  
  return 0;
}
