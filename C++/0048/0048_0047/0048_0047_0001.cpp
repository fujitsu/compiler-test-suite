#include <cstdio>
#include <utility>

class Foo
{
public:
  Foo(int _val) : m_val(_val) {}

  void print() const
  {
    std::printf("%d ", m_val);
  }

private:
  int m_val;
};

void sub1()
{
  
  Foo(4).print();
  std::puts("");

  int&& rvalue_ref = 0;
  std::printf("%d\n", rvalue_ref);

  const char *x = "Test";
  const char *y = std::move(x);
  std::printf("%s\n", y);
}
