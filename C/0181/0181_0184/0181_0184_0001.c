#include <stdio.h>

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

static void (*ptrs[3])(const char *) = {
  sub1, sub2, sub3
};

void (**fptr(void)) (const char *)
{
  return ptrs;
}
