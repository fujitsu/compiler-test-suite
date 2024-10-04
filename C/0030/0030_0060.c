#include <stdio.h>
struct { int m; char ch; } x[] = { 1, 'b' };
int main()
{
  printf("%d\n", sizeof(x));
}
