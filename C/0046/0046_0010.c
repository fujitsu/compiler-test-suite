
#include <stdio.h>
#include <stdlib.h>

struct stc 
{
  short i2;
  int i4;
  long long int i8;
  float r4;
  double r8;
  long double r16;
};

struct stc inline_struct(struct stc x)
{
  struct stc y;

  y = x;

  if (x.i2 < 0) y.i2 = 0;
  if (x.i4 < 0) y.i4 = 0;
  if (x.i8 < 0) y.i8 = 0;
  if (x.r4 < 0) y.r4 = 0;
  if (x.r8 < 0) y.r8 = 0;
  if (x.r16 < 0) y.r16 = 0;

  return y;
}

struct stc construct_and_copy_stc(void)
{
  struct stc x;
  x.i2 = 2;
  x.i4 = 4;
  x.i8 = 8;
  x.r4 = 4;
  x.r8 = 8;
  x.r16 = 16;
  return x;
}

#define is_same_struct(x,y) \
  (((x.i2 == y.i2) \
  && (x.i4 == y.i4) \
  && (x.i8 == y.i8) \
  && (x.r4 == y.r4) \
  && (x.r8 == y.r8) \
  && (x.r16 == y.r16)) ? 1 : 0)

struct stc *inline_pointer(struct stc *x)
{
  if (x->i2 < 0) x->i2 = 0;
  if (x->i4 < 0) x->i4 = 0;
  if (x->i8 < 0) x->i8 = 0;
  if (x->r4 < 0) x->r4 = 0;
  if (x->r8 < 0) x->r8 = 0;
  if (x->r16 < 0) x->r16 = 0;
  return x;
}

struct stc *construct_stc(void)
{
  struct stc *x;
  x = (struct stc *)malloc(sizeof(struct stc));
  x->i2 = 2;
  x->i4 = 4;
  x->i8 = 8;
  x->r4 = 4;
  x->r8 = 8;
  x->r16 = 16;
  return x;
}

#define is_same_pointer(x,y) \
  (((x->i2 == y->i2) \
  && (x->i4 == y->i4) \
  && (x->i8 == y->i8) \
  && (x->r4 == y->r4) \
  && (x->r8 == y->r8) \
  && (x->r16 == y->r16)) ? 1 : 0)

int main(void)
{
  int mm = 1;
  {
    struct stc x,y;
    x = construct_and_copy_stc();
    y = inline_struct(x);
    if (!is_same_struct(x,y)) {
      mm = 0;
      printf("ng : inline_struct\n");
    }
  }
  {
    struct stc *x,*y;
    x = construct_stc();
    y = inline_pointer(x);
    if (!is_same_pointer(x,y)) {
      mm = 0;
      printf("ng : inline_pointer\n");
    }
    free(x);
  }
  if (mm != 0) {
    printf("ok\n");
  }
  return 0;
}
