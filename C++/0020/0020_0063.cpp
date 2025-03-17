#include <cassert>
#include <memory>
#include <string>

struct Myuptr
{
  std::string str;
  int ii;
  Myuptr() : str("Hello"), ii(11) {}
};

void test1()
{
  std::unique_ptr<int[]> p = std::make_unique<int[]>(3);
  assert(p[0] == 0);
  assert(p[1] == 0);
  assert(p[2] == 0);
}

void test2()
{
  std::unique_ptr<Myuptr[]> p = std::make_unique<Myuptr[]>(3);

  assert(p[0].str.size() == 5);
  assert(p[0].ii == 11);

  assert(p[1].str.size() == 5);
  assert(p[1].ii == 11);

  assert(p[2].str.size() == 5);
  assert(p[2].ii == 11);
}

int main()
{
  test1();
  test2();

  return 0;
}
