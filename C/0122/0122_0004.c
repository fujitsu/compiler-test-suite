#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i = 0, j = 100;
  for (;;) {
    if (i < 100 && j < 200) {
	i++; j++;
	if (i == 99) break;
      } else {
	i+= 2; j++;
	if (i > 100) break;
      }
  }
  printf("%d\n",j);
exit (0);
}
