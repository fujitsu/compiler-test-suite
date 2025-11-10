#include <cstdio>
#include "000.hpp"

enum class Bool: bool
{
  BOOL0 = 0,
  BOOL1
};

void sub1()
{
  std::printf("%d %d\n",
	      Bool::BOOL0,
	      Bool::BOOL1);
}

enum class Char: char
{
  CHAR0 = '1',
  CHAR1,
  CHAR2
};

void sub2()
{
  std::printf("%c %c %c\n",
	      Char::CHAR0,
	      Char::CHAR1,
	      Char::CHAR2);
}

enum class ShortInt: short int
{
  SINT0 = 10,
  SINT1,
  SINT2
};

void sub3()
{
  std::printf("%d %d %d\n",
	      ShortInt::SINT0,
	      ShortInt::SINT1,
	      ShortInt::SINT2);
}

enum class Int: int
{
  INT0 = 100,
  INT1,
  INT2
};

void sub4()
{
  std::printf("%d %d %d\n",
	      Int::INT0,
	      Int::INT1,
	      Int::INT2);
}

enum class LongInt: long int
{
  LINT0 = 1000,
  LINT1,
  LINT2
};

void sub5()
{
  std::printf("%ld %ld %ld\n",
	      LongInt::LINT0,
	      LongInt::LINT1,
	      LongInt::LINT2);
}

enum class LLongInt: long long int
{
  LLINT0 = 10000,
  LLINT1,
  LLINT2
};

void sub6()
{
  std::printf("%lld %lld %lld\n",
	      LLongInt::LLINT0,
	      LLongInt::LLINT1,
	      LLongInt::LLINT2);
}
