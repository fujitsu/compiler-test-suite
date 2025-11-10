#include <cstdio>

#include "000.hpp"

class B1
{
public:
  B1():
    m_x(5) {}

  B1& operator , (int val);

  int getVal() const { return m_x; }

private:
  int m_x;
};

B1& B1::operator , (int val)
{
  m_x += val;
  return *this;
}

class B2
{
public:
  B2():
    bVal(true), cVal('0'), sVal(1), iVal(2),
    lVal(3), fVal(4.), dVal(5.) {}

#define DECL_CAST_OPERATOR(Ty) \
  operator Ty () const;

  DECL_CAST_OPERATOR(bool)
  DECL_CAST_OPERATOR(char)
  DECL_CAST_OPERATOR(short int)
  DECL_CAST_OPERATOR(int)
  DECL_CAST_OPERATOR(long int)
  DECL_CAST_OPERATOR(float)
  DECL_CAST_OPERATOR(double)

private:
  bool bVal;
  char cVal;
  short int sVal;
  int iVal;
  long int lVal;
  float fVal;
  double dVal;
};

#define DEF_CAST_OPERATOR(Ty, Pre) \
  B2::operator Ty () const { return Pre##Val; }

DEF_CAST_OPERATOR(bool, b)
DEF_CAST_OPERATOR(char, c)
DEF_CAST_OPERATOR(short int, s)
DEF_CAST_OPERATOR(int, i)
DEF_CAST_OPERATOR(long int, l)
DEF_CAST_OPERATOR(float, f)
DEF_CAST_OPERATOR(double, d)

void sub1()
{
  B1 b1;
  b1, 5;
  if (b1.getVal() != 10) { return; }

  B2 b2;
  bool b = (bool)b2;
  char c = (char)b2;
  short int s = (short int)b2;
  int i = (int)b2;
  long int l = (long int)b2;
  float f = (float)b2;
  double d = (double)b2;
  if (!b ||
      c != '0' ||
      s != 1 ||
      i != 2 ||
      l != 3 ||
      f != 4. ||
      d != 5.) {
    return;
  }

  std::puts("OK");
}
