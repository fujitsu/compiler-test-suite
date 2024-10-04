#include <stdio.h>
struct {
	unsigned short i: 1;
	unsigned short j: 15;
        unsigned short a[3];

} x = {1, 0x7fff, {10,11,12}};
int main()
{
  printf("%d\n", x.i);
  printf("%d\n", x.j);
}


