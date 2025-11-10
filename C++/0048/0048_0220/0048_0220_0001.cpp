#include <cstdio>
#include "000.hpp"

class B1
{
public:
  B1():
    m_val(1) {}

  int operator () (int val)
  {
    return m_val + val;
  }

private:
  int m_val;
};

class B2
{
public:
  B2():
    m_val(2) {}

  B2 *operator -> (void)
  {
    return this;
  }

  bool check()
  {
    return (m_val == 2);
  }

private:
  int m_val;
};

class B3
{
public:
  B3()
  {
    array = new int[10];

    for (int i = 0; i < 10; ++i) {
      array[i] = i;
    }
  }

  ~B3()
  {
    delete [] array;
  }

  int operator [] (const int idx)
  {
    return array[idx];
  }

private:
  int *array;
};

void sub1()
{
  B1 b1;
  int bVal = b1(3);
  if (bVal != 4) {
    std::puts("NG1");
  }
}

void sub2()
{
  B2 b2;
  if (!b2->check()) {
    std::puts("NG2");
  }
}

void sub3()
{
  B3 b3;
  for (int i = 0; i < 10; ++i) {
    if (b3[i] != i) {
      std::puts("NG3");
      return;
    }
  }

  std::puts("OK");
}
