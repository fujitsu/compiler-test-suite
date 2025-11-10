#include <stdio.h>

#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

typedef unsigned long VALUE;

struct RBasic {
  VALUE flags;
};
struct RArray {
  struct RBasic basic;
  union {
    struct {
      VALUE *ptr;
    } heap;
    VALUE ary[ 3 ];
  } as;
};

VALUE
rb_ary_new2(long len)
{
  VALUE ary = (VALUE)malloc(sizeof(struct RArray));
  memset((struct RArray*)ary,0,sizeof(struct RArray));
  ((struct RBasic*)ary)->flags = 1;
  return ary;
}

VALUE
rb_ary_new3(long n, ...)
{
  va_list ar;
  VALUE ary;
  long i;
  ary = rb_ary_new2(n);
  va_start(ar, n);
  for (i=0; i<n; i++) {
    (((struct  RBasic *)ary)->flags
     ? ((struct RArray *)ary)->as.ary
     : ((struct  RArray *)ary)->as.heap.ptr)[i] = va_arg(ar, VALUE);
  }
  return ary;
}

int main() {
  VALUE ary = rb_ary_new3(2, 0x111, 0x222);
  printf("ok\n");
  free((void*)ary);
}
