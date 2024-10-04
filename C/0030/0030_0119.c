#include <stdio.h>
int main()
{
  int i = 0;
  int j = 1;
  _Complex float f = 1.0;
  printf("%d\n", sizeof(i == j));
  printf("%d\n", sizeof(f == j));
  printf("%d\n", sizeof(i != j));
  printf("%d\n", sizeof(f != j));
  printf("%d\n", sizeof(i > j));
  printf("%d\n", sizeof(i < j));
  printf("%d\n", sizeof(i >= j));
  printf("%d\n", sizeof(i <= j));
  printf("%d\n", sizeof(1 ? i >= j:0));
}
