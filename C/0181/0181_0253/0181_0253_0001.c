#include <stdio.h>

typedef struct {
  char name [80];
  int val;
  unsigned uval;
} data;

static int callback_2(void *d);
static void iter_2(int (*)(void*), void *);

static int callback_2(void *d)
{
  data *iter_data = (data *)d;

  printf("%u\n", iter_data->uval);
  return iter_data->uval == 0;
}

static void iter_2(int (*cb)(void*), void *d)
{
  cb(d);
}

#ifdef ORIGINAL
int main()
{
  data d;

  d.uval = 0;
  iter(callback, &d);
  return 0;
}
#else
void sub2()
{
  data d;

  d.uval = 0;
  iter_2(callback_2, &d);
}
#endif
