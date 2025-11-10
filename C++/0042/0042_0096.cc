


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





#include <cstdio>

struct Base {
  int base_a;
  Base() {
    std::cout << Demangle(typeid(*this)) << "()" << std::endl;
  }
  Base(int a) : base_a(a) {
    std::cout << Demangle(typeid(*this)) << "(int)" << std::endl;
  }
  Base(const Base& a) : base_a(a.base_a) {
    std::cout << Demangle(typeid(*this)) << "(const Base&)" << std::endl;
  }

  void func() {
    std::cout << "func()" << std::endl;
  }
};

struct Derived : Base {
  int derived_a;
  using Base::Base;
  using Base::func;
  
  
};

int main()
{
  Derived d1;
  Derived d2(1);
  Derived d3(d1);
  d1.func();
}
