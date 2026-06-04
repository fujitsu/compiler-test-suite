#include <stdio.h>

struct T {
  unsigned int a;
  unsigned short b;
  unsigned int c:8;
  unsigned char d;
  void *e;
};

struct TT {
  struct T *f;
};

int v;

void test(struct TT *ptr)
{
  v = ptr->f[-1].c;
}

int main()
{
  struct T array[5] = 
  { { 0, 0, 0, }, { 0, 0, 1, }, { 0, 0, 2, }, };

  struct TT obj = { &array[2] };

  test(&obj);

  if (v == 1) {
    printf("OK\n");
  } else {
    printf("NG: v = %d\n", v);
  }

  return 0;
}
