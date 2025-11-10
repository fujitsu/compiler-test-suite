#include <cstdio>
#include "000.h"

extern bool in_eh;

test::test()
{
  printf("called CTOR\n");
}

test::~test()
{
  if (in_eh == true) {
    printf("in_eh\n");
  }
  printf("called DTOR\n");
}
