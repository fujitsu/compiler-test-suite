#include <cstdio>
#include "000.h"

bool in_eh = false;

void eh()
{
  in_eh = true;

  throw 1;
}

void func()
{
  test local_obj[2];
}

void func_eh()
{
  test local_obj[2];

  eh();
}

int main()
{
  printf("EH destructor call test\n");

  try {
    printf("local obj without EH\n");
    func();
  } catch(int) {
    printf("catched EH\n");
  }

  try {
    printf("local obj with EH\n");
    func_eh();
  } catch(int) {
    printf("catched EH\n");
  }

  return 0;
}
