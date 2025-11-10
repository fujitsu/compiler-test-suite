#include <cstdio>

template <class T>
class B1
{
private:
  T val;

public:
  B1():
    val(2) {}

  void show()
  {
    std::printf("%d\n", val);
  }
};

template <class T>
using MyClass = B1<T>;

void sub1()
{
  MyClass<int> b1;
  b1.show();
}
