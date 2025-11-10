#include <cstdio>
#include "000.hpp"

enum struct UChar: unsigned char
{
  UCHAR0 = '1',
  UCHAR1,
  UCHAR2
};

void sub1()
{
  std::printf("%c %c %c\n",
	      UChar::UCHAR0,
	      UChar::UCHAR1,
	      UChar::UCHAR2);
}

enum struct UShortInt: unsigned short int
{
  USINT0 = 10,
  USINT1,
  USINT2
};

void sub2()
{
  std::printf("%u %u %u\n",
	      UShortInt::USINT0,
	      UShortInt::USINT1,
	      UShortInt::USINT2);
}

enum struct UInt: unsigned int
{
  UINT0 = 100,
  UINT1,
  UINT2
};

void sub3()
{
  std::printf("%u %u %u\n",
	      UInt::UINT0,
	      UInt::UINT1,
	      UInt::UINT2);
}

enum struct ULongInt: unsigned long int
{
  ULINT0 = 1000,
  ULINT1,
  ULINT2
};

void sub4()
{
  std::printf("%lu %lu %lu\n",
	      ULongInt::ULINT0,
	      ULongInt::ULINT1,
	      ULongInt::ULINT2);
}

enum struct ULLongInt: unsigned long long int
{
  ULLINT0 = 10000,
  ULLINT1,
  ULLINT2
};

void sub5()
{
  std::printf("%llu %llu %llu\n",
	      ULLongInt::ULLINT0,
	      ULLongInt::ULLINT1,
	      ULLongInt::ULLINT2);
}
