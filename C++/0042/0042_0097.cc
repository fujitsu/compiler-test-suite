


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





template<typename T>
struct Base {
  T member;
  Base() {
    std::cout << Demangle(typeid(*this)) << "()" << std::endl;
  }
  Base(T t):member(t) {
    std::cout << Demangle(typeid(*this)) << "(" << Demangle(typeid(T))<< ")" << std::endl;
  }
};

template<typename T>
struct Derived : Base<T> {
  using Base<T>::Base;
};

int main()
{
  Derived<int> d1(1);
  Derived<double> d2(1);
}
