#include <stdio.h>
extern int pragma_norecurrence();
int main() 
{
  int p;
  p = pragma_norecurrence();
  printf("p = %d\n", p);
}


