#include <exception>
#include <cassert>

struct A
{
    ~A()
    {
      assert(std::uncaught_exceptions() == 1);
    }
};

struct B
{
    B()
    {
      assert(std::uncaught_exceptions() == 0);
    }
};

int main()
{
    try
    {
      A a;
      assert(std::uncaught_exceptions() == 0);
      throw B();
    }
    catch (...)
    {
      assert(std::uncaught_exception() == 0);
    }
    assert(std::uncaught_exceptions() == 0);
}
