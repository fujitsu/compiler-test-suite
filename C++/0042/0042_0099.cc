


#include <cxxabi.h>
#include <cstdlib>
#include <cstdio>
#include <iostream>

class Demangle {
  char *demangled;
public:
  Demangle( std::type_info const & ti) {
    int status = 0;
    demangled = abi::__cxa_demangle(ti.name(), 0, 0, &status);
  }
  ~Demangle() {
    
    delete demangled;
  }
  operator const char *() const {
    return demangled;
  }
};







struct Base1 {
  int base_a;
  Base1() : base_a(0) {
    std::cout << Demangle(typeid(*this)) << "()" << std::endl;
  }
  Base1(int a) : base_a(a) {
    std::cout << Demangle(typeid(*this)) << "(int)" << std::endl;
  }
};

struct Base2 : public Base1{
  
  Base2() : Base1() {
    std::cout << Demangle(typeid(*this)) << "()" << std::endl << std::endl;
  }
  Base2(int i) : Base1(i) {
    std::cout << Demangle(typeid(*this)) << "(int)" << std::endl << std::endl;
  }
};

struct Derived : public Base2 {
  
  
};

int main()
{
  Derived d1;
  

}
