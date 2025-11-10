#include <stdio.h>

#include "003.h"

static void sub1(const char *arg)
{
  puts(arg);
}

static void sub2(const char *arg)
{
  puts(arg);
}

static void sub3(const char *arg)
{
  puts(arg);
}

static funcPtr ptrs[3] = {
  sub1, sub2, sub3
};

funcPtr *fptr()
{
  return ptrs;
}
