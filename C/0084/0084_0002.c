#include <stdio.h>

int main(void)
{
  int item[100];
  int i, j, tmp;
  int count;
  
  count = 10;
  for (i = 0; i < count; ++i) {
    item[i] = i;
  }
  
  for (i = 1; i < count; ++i) {
    for (j = count-1; j >= i; --j) {
      if (item[j-1] > item[j]) {
	tmp = item[j-1];
	item[j-1] = item[j];
	item[j] = tmp;
      }
    }
  }
  for (i = 0; i < count; ++i) {
    printf("%d ", item[i]);
  }
  printf("\n");
}
  
