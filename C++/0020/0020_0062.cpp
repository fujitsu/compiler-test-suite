#include <cassert>
#include <memory>
#include <string>

struct Myuptr
{
  std::string str;
  int ii;
  Myuptr(std::string s, int i) : str(s), ii(i) {}
};

void test1()
{
  std::unique_ptr<int> p = std::make_unique<int>();
  assert(*p == 0);
}

void test2()
{
  std::unique_ptr<int> p1 = std::make_unique<int>(1);
  assert(*p1 == 1);
}

void test3()
{
  std::unique_ptr<Myuptr> p = std::make_unique<Myuptr>("Hello", 11);
  assert(p->str == "Hello");
  assert(p->ii == 11);
}

int main()
{
  test1();
  test2();
  test3();

  return 0;
}
