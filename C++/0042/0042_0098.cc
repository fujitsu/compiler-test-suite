


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







struct Base {
  int base_a;
  Base(int a) : base_a(a) {
    std::cout << Demangle(typeid(*this)) << "(int)" << std::endl;
  }
  Base() : base_a(0) {
    std::cout << Demangle(typeid(*this)) << "()" << std::endl;
  }
};

struct Derived : virtual public Base {
  using Base::Base;
};

int main()
{
  Derived d1;
  Derived d2(1);

}
