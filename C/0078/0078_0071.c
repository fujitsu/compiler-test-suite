#include <stdio.h>

 

struct TAG1 { signed char sc; } st1;
struct TAG4 { int i; } st4;
struct TAG5 { signed char sc[5]; } st5;
struct TAG8 { long j; } st8;
struct TAG16 { long j[2]; } st16;
struct TAG256 { long j[256/8]; } st256;

#define TEST(size) \
void test##size(int i,struct TAG##size pst##size) { \
  st##size = pst##size; \
} 

TEST(1)
TEST(4)
TEST(5)
TEST(8)
TEST(16)
TEST(256)

 

#define TEST0(size) \
void test0##size(i,pst##size) \
int i;struct TAG##size pst##size; { \
  st##size = pst##size; \
} 

TEST0(1)
TEST0(4)
TEST0(5)
TEST0(8)
TEST0(16)
TEST0(256)
int main()
{
   test1(1,st1);
   test4(4,st4);
   test5(5,st5);
   test8(8,st8);
   test16(16,st16);
   test256(256,st256);
   test01(1,st1);
   test04(4,st4);
   test05(5,st5);
   test08(8,st8);
   test016(16,st16);
   test0256(256,st256);
}
