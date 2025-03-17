#include <iostream>

volatile int global_value;

template <class T> class crtp_base {
public:
  void method() { static_cast<T &>(*this).sub_method(); }
};

class vf_base {
public:
  virtual void method() {}
};

class crtp_derived1 : public crtp_base<crtp_derived1> {
public:
  void sub_method() { global_value = 1; }
};

class crtp_derived2 : public crtp_base<crtp_derived2> {
public:
  void sub_method() { global_value = 2; }
};

static crtp_derived1 crtp1;
static crtp_derived2 crtp2;

int main() {
  crtp1.method();
  std::cout << global_value << std::endl;

  crtp2.method();
  std::cout << global_value << std::endl;
}
