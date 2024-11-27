#include <stdio.h>
static int a = 0; 
int main()
{
  int *p = &a;
  
  if (*p == 0) { printf("ok"); }
}
