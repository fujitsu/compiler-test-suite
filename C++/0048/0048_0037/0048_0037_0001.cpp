#include <cstdio>
#include <cstdint>

#include "000.hpp"

void sub1()
{
  std::int_least8_t i8 = '1';
  std::printf("%c\n", i8);
}

void sub2()
{
  std::uint_least8_t u8 = '2';
  std::printf("%c\n", u8);
}

void sub3()
{
  std::int_least16_t i16 = 3;
  std::printf("%d\n", i16);
}

void sub4()
{
  std::uint_least16_t u16 = 4;
  std::printf("%u\n", u16);
}

void sub5()
{
  std::int_least32_t i32 = 5;
  std::printf("%d\n", i32);
}

void sub6()
{
  std::uint_least32_t u32 = 6;
  std::printf("%u\n", u32);
}

void sub7()
{
  std::int_least64_t i64 = 7;
  std::printf("%ld\n", i64);
}

void sub8()
{
  std::uint_least64_t u64 = 8;
  std::printf("%lu\n", u64);
}
