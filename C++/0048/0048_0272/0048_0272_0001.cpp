#include <cstdio>
#include <limits.h>

template <typename T>
class AccumTraits;

template <>
class AccumTraits<char>
{
public:
  typedef int AccT;
};

template <>
class AccumTraits<short>
{
public:
  typedef int AccT;
};

template <>
class AccumTraits<int>
{
public:
  typedef long AccT;
};

template <>
class AccumTraits<unsigned int>
{
public:
  typedef unsigned long AccT;
};

template <typename T>
typename AccumTraits<T>::AccT accum(const T *beg,
				    const T *end)
{
  typedef typename AccumTraits<T>::AccT AccT;

  AccT total = AccT();

  while (beg != end) {
    total += *beg;
    ++beg;
  }

  return total;
}

void sub1()
{
  char c[] = { '0', 'a', '1', 'b', CHAR_MAX };
  AccumTraits<char>::AccT ret = accum(&c[0], &c[5]);
  if (ret != 419) { std::puts("NG 1"); }
}

void sub2()
{
  short s[] = { 1, 2, 3, 4, SHRT_MAX };
  AccumTraits<short>::AccT ret = accum(&s[0], &s[5]);
  if (ret != 32777) { std::puts("NG 2"); }
}

void sub3()
{
  int i[] = { 6, 7, 8, 9, INT_MAX };
  AccumTraits<int>::AccT ret = accum(&i[0], &i[5]);
  if (ret != 2147483677) { std::puts("NG 3"); }
}

void sub4()
{
  unsigned u[] = { 1, 2, 3, 4, UINT_MAX };
  AccumTraits<unsigned>::AccT ret = accum(&u[0], &u[5]);
  if (ret == 4294967305) { std::puts("OK");   }
  else                   { std::puts("NG 4"); }
}
