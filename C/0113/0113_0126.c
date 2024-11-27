#include <stdio.h>

void case2d_test1(unsigned char a, int x)
{
  switch(a) {
  case 0:  x += 2; break;
  case 1:  x += 2; break;
  default: x += 3; break;
  }
  printf("%d\n", x);
}

void case3d_test1(unsigned char a, int x)
{
  switch(a) {
  case -1:  x += 2; break;
  case  0:  x += 2; break;
  case  1:  x += 2; break;
  default: x += 3; break;
  }
  printf("%d\n", x);
}

void case3d_test2(unsigned char a, int x)
{
  switch(a) {
  case  0:  x += 2; break;
  case -1:  x += 2; break;
  case  1:  x += 2; break;
  default: x += 3; break;
  }
  printf("%d\n", x);
}

void case3d_test3(unsigned char a, int x)
{
  switch(a) {
  case  1:  x += 2; break;
  case  0:  x += 2; break;
  case -1:  x += 2; break;
  default: x += 3; break;
  }
  printf("%d\n", x);
}

void case7d_test1(unsigned char a, int x)
{
  switch(a) {
  case -3:  x += 2; break;
  case -2:  x += 2; break;
  case -1:  x += 2; break;
  case  0:  x += 2; break;
  case  1:  x += 2; break;
  case  2:  x += 2; break;
  case  3:  x += 2; break;
  default: x += 3; break;
  }
  printf("%d\n", x);
}

void case7d_test2(unsigned char a, int x)
{
  switch(a) {
  case -1:  x += 2; break;
  case -3:  x += 2; break;
  case -2:  x += 2; break;
  case  0:  x += 2; break;
  case  2:  x += 2; break;
  case  3:  x += 2; break;
  case  1:  x += 2; break;
  default: x += 3; break;
  }
  printf("%d\n", x);
}

void case7d_test3(unsigned char a, int x)
{
  switch(a) {
  case -3: x += 2; break;
  case -1: x += 2; break;
  case -2: x += 2; break;
  case  0: x += 2; break;
  case  2: x += 2; break;
  case  3: x += 2; break;
  case  4: x += 2; break;
  default: x += 3; break;
  }
  printf("%d\n", x);
}

void case7d_test4(unsigned char a, int x)
{
  switch(a) {
  case -3:
  case -1:
  case -2:
  case  0:
    x += 1; break;
  case  1:
  case  2:
  case  3:
    x += 2; break;
  default:
    x += 3; break;
  }
  printf("%d\n", x);
}

void case7d_test5(unsigned char a, int x)
{
  switch(a) {
  case -3:
  case -1:
  case -2:
    x += 1; break;
  case  0:
  case  1:
  case  2:
  case  3:
    x += 2; break;
  default:
    x += 3; break;
  }
  printf("%d\n", x);
}

void case7d_test6(unsigned char a, int x)
{
  switch(a) {
  case -3:
  case -1:
  case -2:
    x += 3; break;
  case  0:
  case  1:
  case  2:
  case  3:
    x += 2; break;
  default:
    x += 3; break;
  }
  printf("%d\n", x);
}

void case7d_test7(unsigned char a, int x)
{
  switch(a) {
  case -3:
  case -1:
  case -2:
    x += 2; break;
  case  0:
  case  1:
  case  2:
  case  3:
    x += 3; break;
  default:
    x += 3; break;
  }
  printf("%d\n", x);
}

void case14d_test1(unsigned char a, int x)
{
  switch(a) {
  case -3:
  case -4:
  case -5:
  case -6:
  case -7:
    x += 1; break;
  case  0:
  case  1:
  case -1:
  case  2:
  case -2:
  case  3:
  case  4:
  case  5:
  case  6:
    x += 1; break;
  default:
    x += 3; break;
  }
  printf("%d\n", x);
}

void case14d_test2(unsigned char a, int x)
{
  switch(a) {
  case  4:
  case  5:
  case  6:
    x += 2; break;
  case -3:
  case -4:
  case -5:
  case -6:
  case -7:
    x += 1; break;
  case  0:
  case  1:
  case -1:
  case  2:
  case -2:
  case  3:
    x += 2; break;
  default:
    x += 3; break;
  }
  printf("%d\n", x);
}

void case7_test1(unsigned char a, int x)
{
  switch(a) {
  case -3: x += 2; break;
  case -1: x += 2; break;
  case -2: x += 2; break;
  case  0: x += 2; break;
  case  1: x += 2; break;
  case  2: x += 2; break;
  case  3: x += 2; break;
  }
  printf("%d\n", x);
}

int main(void) 
{
  case2d_test1(-1, -1);
  case2d_test1( 0, -1);
  case2d_test1( 1, -1);
  case2d_test1( 2, -1);
  case3d_test1(-2, -1);
  case3d_test1(-1, -1);
  case3d_test1( 0, -1);
  case3d_test1( 1, -1);
  case3d_test1( 2, -1);
  case3d_test2(-2, -1);
  case3d_test2(-1, -1);
  case3d_test2( 0, -1);
  case3d_test2( 1, -1);
  case3d_test2( 2, -1);
  case3d_test3(-2, -1);
  case3d_test3(-1, -1);
  case3d_test3( 0, -1);
  case3d_test3( 1, -1);
  case3d_test3( 2, -1);
  case7d_test1(-4, -1);
  case7d_test1(-3, -1);
  case7d_test1(-2, -1);
  case7d_test1(-1, -1);
  case7d_test1( 0, -1);
  case7d_test1( 1, -1);
  case7d_test1( 2, -1);
  case7d_test1( 3, -1);
  case7d_test1( 4, -1);
  case7d_test2(-4, -1);
  case7d_test2(-3, -1);
  case7d_test2(-2, -1);
  case7d_test2(-1, -1);
  case7d_test2( 0, -1);
  case7d_test2( 1, -1);
  case7d_test2( 2, -1);
  case7d_test2( 3, -1);
  case7d_test2( 4, -1);
  case7d_test3(-4, -1);
  case7d_test3(-3, -1);
  case7d_test3(-2, -1);
  case7d_test3(-1, -1);
  case7d_test3( 0, -1);
  case7d_test3( 1, -1);
  case7d_test3( 2, -1);
  case7d_test3( 3, -1);
  case7d_test3( 4, -1);
  case7d_test4(-4, -1);
  case7d_test4(-3, -1);
  case7d_test4(-2, -1);
  case7d_test4(-1, -1);
  case7d_test4( 0, -1);
  case7d_test4( 1, -1);
  case7d_test4( 2, -1);
  case7d_test4( 3, -1);
  case7d_test4( 4, -1);
  case7d_test5(-4, -1);
  case7d_test5(-3, -1);
  case7d_test5(-2, -1);
  case7d_test5(-1, -1);
  case7d_test5( 0, -1);
  case7d_test5( 1, -1);
  case7d_test5( 2, -1);
  case7d_test5( 3, -1);
  case7d_test5( 4, -1);
  case7d_test6(-4, -1);
  case7d_test6(-3, -1);
  case7d_test6(-2, -1);
  case7d_test6(-1, -1);
  case7d_test6( 0, -1);
  case7d_test6( 1, -1);
  case7d_test6( 2, -1);
  case7d_test6( 3, -1);
  case7d_test6( 4, -1);
  case7d_test7(-4, -1);
  case7d_test7(-3, -1);
  case7d_test7(-2, -1);
  case7d_test7(-1, -1);
  case7d_test7( 0, -1);
  case7d_test7( 1, -1);
  case7d_test7( 2, -1);
  case7d_test7( 3, -1);
  case7d_test7( 4, -1);
  case14d_test1(-8, -1);
  case14d_test1(-7, -1);
  case14d_test1(-6, -1);
  case14d_test1(-5, -1);
  case14d_test1(-4, -1);
  case14d_test1(-3, -1);
  case14d_test1(-2, -1);
  case14d_test1(-1, -1);
  case14d_test1( 0, -1);
  case14d_test1( 1, -1);
  case14d_test1( 2, -1);
  case14d_test1( 3, -1);
  case14d_test1( 4, -1);
  case14d_test1( 5, -1);
  case14d_test1( 6, -1);
  case14d_test1( 7, -1);
  case14d_test2(-8, -1);
  case14d_test2(-7, -1);
  case14d_test2(-6, -1);
  case14d_test2(-5, -1);
  case14d_test2(-4, -1);
  case14d_test2(-3, -1);
  case14d_test2(-2, -1);
  case14d_test2(-1, -1);
  case14d_test2( 0, -1);
  case14d_test2( 1, -1);
  case14d_test2( 2, -1);
  case14d_test2( 3, -1);
  case14d_test2( 4, -1);
  case14d_test2( 5, -1);
  case14d_test2( 6, -1);
  case14d_test2( 7, -1);
  case7_test1(-4, -1);
  case7_test1(-3, -1);
  case7_test1(-2, -1);
  case7_test1(-1, -1);
  case7_test1( 0, -1);
  case7_test1( 1, -1);
  case7_test1( 2, -1);
  case7_test1( 3, -1);
  case7_test1( 4, -1);
}
