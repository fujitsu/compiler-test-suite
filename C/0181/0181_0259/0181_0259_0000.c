
#include <stdio.h>
int sum_1(to, from, count)
     short *to, *from;
     short count;
{
  int i;
  for (i = 0; i != count; ++i)
    *to += *from++;
}

#define NUM 2
#ifdef ORIGINAL
int main() {
  short Array[NUM];
  short Sum = 0;
  int i;

  for (i = 0; i != NUM; ++i)
    Array[i] = i;

  sum(&Sum, Array, NUM);

  printf("Sum is %d\n", Sum);
  return 0;
}
#else
void sub1()
{
  short Array[NUM];
  short Sum = 0;
  int i;

  for (i = 0; i != NUM; ++i)
    Array[i] = i;

  sum_1(&Sum, Array, NUM);

  printf("Sum is %d\n", Sum);
}
#endif
