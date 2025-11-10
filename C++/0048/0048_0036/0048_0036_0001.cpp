#include <cstdio>
#include <cstdint>

#include "000.hpp"

void sub1()
{
  std::int8_t i8 = '1';
  std::printf("%c\n", i8);
}

void sub2()
{
  std::uint8_t u8 = '2';
  std::printf("%c\n", u8);
}

void sub3()
{
  std::int16_t i16 = 3;
  std::printf("%d\n", i16);
}

void sub4()
{
  std::uint16_t u16 = 4;
  std::printf("%u\n", u16);
}

void sub5()
{
  std::int32_t i32 = 5;
  std::printf("%d\n", i32);
}

void sub6()
{
  std::uint32_t u32 = 6;
  std::printf("%u\n", u32);
}

void sub7()
{
  std::int64_t i64 = 7;
  std::printf("%ld\n", i64);
}

void sub8()
{
  std::uint64_t u64 = 8;
  std::printf("%lu\n", u64);
}
