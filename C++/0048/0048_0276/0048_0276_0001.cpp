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
  static AccT zero() { return 0; }
};

template <>
class AccumTraits<short>
{
public:
  typedef int AccT;
  static AccT zero() { return 0; }
};

template <>
class AccumTraits<int>
{
public:
  typedef long AccT;
  static AccT zero() { return 0; }
};

template <>
class AccumTraits<unsigned int>
{
public:
  typedef unsigned long AccT;
  static AccT zero() { return 0; }
};

template <typename T,
	  typename AT = AccumTraits<T> >
class Accum
{
public:
  static typename AT::AccT accum(const T *beg,
				 const T *end)
  {
    typename AT::AccT total = AT::zero();
    
    while (beg != end) {
      total += *beg;
      ++beg;
    }

    return total;
  }
};

template <typename T>
typename AccumTraits<T>::AccT accum(const T *beg,
				    const T *end)
{
  return Accum<T>::accum(beg, end);
}

template <typename Traits, typename T>
typename Traits::AccT accum(const T *beg,
			    const T *end)
{
  return Accum<T, Traits>::accum(beg, end);
}

void sub1()
{
  char c[] = { '0', 'a', '1', 'b', CHAR_MAX };
  auto ret = accum(std::begin(c), std::end(c));
  if (ret != 419) { std::puts("NG 1"); }
}

void sub2()
{
  short s[] = { 1, 2, 3, 4, SHRT_MAX };
  auto ret = accum(std::begin(s), std::end(s));
  if (ret != 32777) { std::puts("NG 2"); }
}

void sub3()
{
  int i[] = { 6, 7, 8, 9, INT_MAX };
  auto ret = accum(std::begin(i), std::end(i));
  if (ret != 2147483677) { std::puts("NG 3"); }
}

void sub4()
{
  unsigned u[] = { 1, 2, 3, 4, UINT_MAX };
  auto ret = accum<AccumTraits<unsigned>,unsigned>(std::begin(u),
						   std::end(u));
  if (ret == 4294967305) { std::puts("OK");   }
  else                   { std::puts("NG 4"); }
}
