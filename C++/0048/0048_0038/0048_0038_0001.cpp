#include <cstdio>
#include <cstdint>

#include "000.hpp"

void sub1()
{
  std::int_fast8_t i8 = '1';
  std::printf("%c\n", i8);
}

void sub2()
{
  std::uint_fast8_t u8 = '2';
  std::printf("%c\n", u8);
}

void sub3()
{
  std::int_fast16_t i16 = 3;
  std::printf("%d\n", i16);
}

void sub4()
{
  std::uint_fast16_t u16 = 4;
  std::printf("%u\n", u16);
}

void sub5()
{
  std::int_fast32_t i32 = 5;
  std::printf("%d\n", i32);
}

void sub6()
{
  std::uint_fast32_t u32 = 6;
  std::printf("%u\n", u32);
}

void sub7()
{
  std::int_fast64_t i64 = 7;
  std::printf("%ld\n", i64);
}

void sub8()
{
  std::uint_fast64_t u64 = 8;
  std::printf("%lu\n", u64);
}
