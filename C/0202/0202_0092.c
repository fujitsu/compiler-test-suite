#include <stdio.h>
struct test { int mem[100]; };

struct test ex;

struct test sub01(struct test param)
{
  ex = param;
  return ex;
}

struct test sub02(struct test volatile param)
{
  ex = param;
  return ex;
}

struct test sub03(struct test const param)
{
  ex = param;
  return ex;
}

struct test vsub()
{
  struct test volatile a = { 40 };
  return a;
}

struct test csub()
{
  struct test const a = { 50 };
  return a;
}

int main()
{
  {
    struct test x;
    x.mem[0] = 10;
    if (sub01(x).mem[0] == 10) printf("test 05-01 OK\n");
    x.mem[0] = 20;
    if (sub02(x).mem[0] == 20) printf("test 05-02 OK\n");
    x.mem[0] = 30;
    if (sub03(x).mem[0] == 30) printf("test 05-03 OK\n");
  }
  {
    struct test volatile x;
    x.mem[0] = 11;
    if (sub01(x).mem[0] == 11) printf("test 05-04 OK\n");
    x.mem[0] = 21;
    if (sub02(x).mem[0] == 21) printf("test 05-05 OK\n");
    x.mem[0] = 31;
    if (sub03(x).mem[0] == 31) printf("test 05-06 OK\n");
  }
  {
    struct test const x = {12};
    if (sub01(x).mem[0] == 12) printf("test 05-07 OK\n");
  }
  {
    struct test const x = {22};
    if (sub02(x).mem[0] == 22) printf("test 05-08 OK\n");
  }
  {
    struct test const x = {32};
    if (sub03(x).mem[0] == 32) printf("test 05-09 OK\n");
  }
  if (vsub().mem[0] == 40) printf("test 05-10 OK\n");
  if (csub().mem[0] == 50) printf("test 05-11 OK\n");
  return 0;
}
