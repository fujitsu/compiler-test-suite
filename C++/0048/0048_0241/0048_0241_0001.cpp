#include <cstdio>
#include <iterator>
#include <limits.h>

template <typename T>
class AccumTraits;

template <>
class AccumTraits<char>
{
public:
  typedef int AccT;
  static AccT initialValue() { return 1; }
};

template <>
class AccumTraits<short>
{
public:
  typedef int AccT;
  static AccT initialValue() { return 1; }
};

template <>
class AccumTraits<int>
{
public:
  typedef long AccT;
  static AccT initialValue() { return 1; }
};

template <>
class AccumTraits<unsigned int>
{
public:
  typedef unsigned long AccT;
  static AccT initialValue() { return 1; }
};

class Add;
class Mult;

template <typename T,
	  typename Policy = Add,
	  typename AT = AccumTraits<T>>
class Accum
{
public:
  static typename AT::AccT accum(const T *beg,
				 const T *end)
  {
    typename AT::AccT total = AT::initialValue();
    
    while (beg != end) {
      Policy::accumulate(total, *beg);
      ++beg;
    }

    return total;
  }
};

#define DEF_POLICY(Name, Op)               \
class Name                                 \
{                                          \
public:                                    \
  template <typename T1, typename T2>      \
  static void accumulate(T1& total,        \
			 const T2& value)  \
  {                                        \
    total Op##= value;                     \
  }                                        \
}

DEF_POLICY(Add, +);
DEF_POLICY(Mult, *);

void sub1()
{
  char c[] = { '0', '1', '2', '3', '4' };
  auto ret = Accum<char, Mult>::accum(std::begin(c), std::end(c));
  std::printf("%d\n", ret);
  
}

void sub2()
{
  short s[] = { 1, 2, 3, 4, 5 };
  auto ret = Accum<short>::accum(std::begin(s), std::end(s));
  std::printf("%d\n", ret);
  
}

void sub3()
{
  int i[] = { 6, 7, 8, 9, 10 };
  auto ret = Accum<int, Mult>::accum(std::begin(i), std::end(i));
  std::printf("%ld\n", ret);
  
}

void sub4()
{
  unsigned u[] = { 11, 12, 13, 14, 15 };
  auto ret = Accum<unsigned>::accum(std::begin(u), std::end(u));
  std::printf("%lu\n", ret);
  
  
}
