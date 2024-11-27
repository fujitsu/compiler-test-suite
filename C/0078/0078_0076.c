#include <stdio.h>
#include <string.h>



unsigned char result[64] = {
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
};

struct TAG1 { signed char sc; } st1;

struct TAG2 { signed short ss; } st2;

struct TAG3 {
  signed short ss;
  signed char  sc;
} st3;

struct TAG4 { signed int   si; } st4;

struct TAG5 {
  signed int   si;
  signed char  sc;
} st5;

struct TAG6 {
  signed int   si;
  signed short ss;
} st6;

struct TAG7 {
  signed int   si;
  signed short ss;
  signed char  sc;
} st7;

struct TAG8 { signed long  sl; } st8;

struct TAG16 { signed long  sl[2]; } st16;
struct TAG24 { signed long  sl[3]; } st24;
struct TAG32 { signed long  sl[4]; } st32;

struct TAG33 {
  signed long  sl[4];
  signed char  sc;
} st33;


#define TEST(size) \
static struct TAG##size func##size() { \
  struct TAG##size res; \
  memcpy(&res,&result,sizeof(struct TAG##size)); \
  return res; \
}

TEST(1)
TEST(2)
TEST(3)
TEST(4)
TEST(5)
TEST(6)
TEST(7)
TEST(8)
TEST(16)
TEST(24)
TEST(32)
TEST(33)
int main()
{
  st1 = func1();
  if (st1.sc != 0) { puts("NG"); }

  st2 = func2();
  if (st2.ss != 256) { puts("NG"); }

  st3 = func3();
  if (st3.ss != 256 || st3.sc != 2) { puts("NG"); }

  st4 = func4();
  if (st4.si != 50462976) { puts("NG"); }

  st5 = func5();
  if (st5.si != 50462976 || st5.sc != 4) { puts("NG"); }

  st6 = func6();
  if (st6.si != 50462976 || st6.ss != 1284) { puts("NG"); }

  st7 = func7();
  if (st7.si != 50462976 || st7.ss != 1284 || st7.sc != 6) {
    puts("NG");
  }

  st8 = func8();
  if (st8.sl != 506097522914230528) { puts("NG"); }

  st16 = func16();
  if (st16.sl[0] != 506097522914230528 || st16.sl[1] != 1084818905618843912) {
    puts("NG");
  }

  st24 = func24();
  if (st24.sl[0] != 506097522914230528 ||
      st24.sl[1] != 1084818905618843912 ||
      st24.sl[2] != 506097522914230528) {
    puts("NG");
  }

  st32 = func32();
  if (st32.sl[0] != 506097522914230528 ||
      st32.sl[1] != 1084818905618843912 ||
      st32.sl[2] != 506097522914230528 ||
      st32.sl[3] != 1084818905618843912) {
    puts("NG");
  }

  st33 = func33();
  if (st33.sl[0] != 506097522914230528 ||
      st33.sl[1] != 1084818905618843912 ||
      st33.sl[2] != 506097522914230528 ||
      st33.sl[3] != 1084818905618843912 ||
      st33.sc != 0) {
    puts("NG");
  }
  puts("PASS");
}
