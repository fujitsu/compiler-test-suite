#define NULL  (void *)0

void *my_memalign(int) __attribute__ ((alloc_align(1)));

void *my_memalign(int x)
{
  return NULL;
}
