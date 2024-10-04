#include <stdio.h>
struct { int i; int a[]; } x = { 1 };
struct { int i; int a[]; } y = { 1, 2 };
int main()
{
  printf("%d\n", x.i);
  printf("%d\n", y.i);
  printf("%d\n", y.a[0]);

}
