#include <stdio.h>

__attribute__ ((constructor))
static void ctor()
{
  puts("ctor");
}

__attribute__ ((destructor))
static void dtor()
{
  puts("dtor");
}
