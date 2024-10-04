#include <stdio.h>

long long j;
int main(void)
{
  int i;
  for(i=0;i<10;i++) j++;
  printf("%d\n", (int )j);
}
