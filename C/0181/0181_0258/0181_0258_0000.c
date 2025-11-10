#include <stdio.h>
#define NUM 32

int Array[];
int Array[NUM];
int Foo;            

#ifdef ORIGINAL
int main() { 
  unsigned i;
  for (i = 0; i != NUM; ++i)
    Array[i] = 5;

  printf("%d\n", Foo);
  return 0;
}
#else
void sub1()
{
  unsigned i;
  for (i = 0; i != NUM; ++i)
    Array[i] = 5;

  printf("%d\n", Foo);
}
#endif
