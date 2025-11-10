#include <stdio.h>
#include <stdlib.h>

void *my_calloc(int, int) __attribute__ ((alloc_size(1, 2)));
void *my_malloc(int, int) __attribute__ ((alloc_size(2)));

int main()
{
  void *c_ptr = my_calloc(1, 2);
  free(c_ptr);
  void *m_ptr = my_malloc(1, 2);
  free(m_ptr);
  puts("OK");
  return 0;
}
