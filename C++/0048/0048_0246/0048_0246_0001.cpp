#include <cstdio>
#include "000.hpp"

class RVO1
{
public:
  int val;

  RVO1() {}
  explicit RVO1(int _val):
    val(_val) {}
};

static RVO1 add(RVO1& r1, RVO1& r2)
{
  return RVO1(r1.val + r2.val);
}

void sub1()
{
  RVO1 r1(1), r2(2);
  RVO1 r3 = add(r1, r2);
  std::printf("%d\n", r3.val);
}

class RVO2
{
public:
  int fst, snd;

  RVO2() {}
  explicit RVO2(int f, int s):
    fst(f), snd(s) {}

  RVO2 operator + (const RVO2& rhs)
  {
    return RVO2(fst + rhs.fst, snd + rhs.snd);
  }
};

void sub2()
{
  RVO2 r1(2, 4), r2(3, 5);
  RVO2 r3 = r1 + r2;
  std::printf("%d %d\n", r3.fst, r3.snd);
}

#define TEMPLATE_OPERATOR(Name, Op)			\
  template <typename T>					\
  class Name##1						\
  {							\
  public:  						\
    T operator Op (const T& rhs)			\
    {							\
      T tmp(static_cast<T&>(*this));			\
      tmp Op##= rhs;					\
      return tmp;					\
    }							\
    friend T operator Op (const T& lhs, const T& rhs)	\
      { T nrv(lhs); nrv Op##= rhs; return nrv; }	\
  }

TEMPLATE_OPERATOR(addable, +);

class NRVO1: public addable1<NRVO1>
{
public:
  NRVO1() {}

  explicit NRVO1(int _val):
    val(_val) {}

  NRVO1(const NRVO1& rhs)
    : val(rhs.val) {}

  NRVO1& operator = (const NRVO1& rhs)
  {
    val = rhs.val;
    return *this;
  }

  NRVO1& operator += (const NRVO1& rhs)
  {
    val += rhs.val;
    return *this;
  }

  int getVal() const { return val; }

private:
  int val;
};

void sub3()
{
  NRVO1 nrv1(3), nrv2(5);
  NRVO1 nrv3 = nrv1 + nrv2;
  std::printf("%d\n", nrv3.getVal());
}

TEMPLATE_OPERATOR(subtractable, -);
TEMPLATE_OPERATOR(multipliable, *);
TEMPLATE_OPERATOR(dividable, /);

class NRVO2:
  public addable1<NRVO2>,
  public subtractable1<NRVO2>,
  public multipliable1<NRVO2>,
  public dividable1<NRVO2>
{
public:
  NRVO2() {}
  
  explicit NRVO2(int _x, int _y, int _z):
    x(_x), y(_y), z(_z) {}

#define DEF_OP(Op)				\
  NRVO2& operator Op##= (const NRVO2& rhs)	\
  {						\
    x Op##= rhs.x;				\
    y Op##= rhs.y;				\
    z Op##= rhs.z;				\
    return *this;				\
  }

  DEF_OP(+)
  DEF_OP(-)
  DEF_OP(*)
  DEF_OP(/)

  void show()
  {
    std::printf("%d %d %d\n", x, y, z);
  }

private:
  int x, y, z;
};

void sub4()
{
  NRVO2 nrv1(1, 2, 3), nrv2(3, 4, 5);

  NRVO2 add = nrv1 + nrv2;
  add.show();

  NRVO2 sub = nrv2 - nrv1;
  sub.show();

  NRVO2 mult = nrv1 * nrv2;
  mult.show();

  NRVO2 div = nrv2 / nrv1;
  div.show();
}
