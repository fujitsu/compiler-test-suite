#include <string.h>
#include <stdio.h>



unsigned char result[72] = {
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
  0,1,2,3,4,5,6,7,
};

struct TAG33 {
  signed char  sc[33];
} st33;

struct TAG34 {
  signed short sc[34/2];
} st34;

struct TAG36 {
  signed int  sc[36/2];
} st36;

struct TAG40 {
  signed long sc[40/8];
} st40;


#define TEST(size) \
struct TAG##size func##size() { \
  struct TAG##size res; \
  memcpy(&res,&result,sizeof(struct TAG##size)); \
  return res; \
}

TEST(33)
TEST(34)
TEST(36)
TEST(40)

#define CHECK(size) \
   st##size = func##size(); \
   if( memcmp(&st##size,&result,sizeof(st##size)) != 0 ) puts("NG##size");
int main()
{
   CHECK(33);
   CHECK(34);
   CHECK(36);
   CHECK(40);
   puts("PASS");
}
