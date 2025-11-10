#include "000.hpp"
#include "001.hpp"

static boost::intmax_t func1(boost::ratio<5, 6> s)
{
  return s.num;
}

void test1()
{
  boost::ratio<10, 12> r;
  (func1(r) == 5);
}

static boost::intmax_t func2(boost::ratio<5, 5> s)
{
  return s.num;
}

void test2()
{
  boost::ratio<10, 30> r;
  (func2(r) == 5);
}
