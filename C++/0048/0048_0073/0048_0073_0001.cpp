#include <cstdio>
#include "000.hpp"

template <typename T>
class Singleton
{
public:
  static T& getInstance()
  {
    static T singleton;
    return singleton;
  }

protected:
  Singleton()
  {
    std::puts("Singleton::Singleton");
  }
  
  virtual ~Singleton()
  {
    std::puts("Singleton::~Singleton");
  }

  Singleton(const Singleton&);
  Singleton& operator = (const Singleton&);
};

class B1: public Singleton<B1>
{
public:
  void sub1()
  {
    std::puts("B1::sub1");
  }
};

void sub1()
{
  B1& b1 = B1::getInstance();
  b1.sub1();
}
